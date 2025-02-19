<?php

namespace App\Http\Controllers;

use App\Models\Expense;
use App\Models\Tag;
use App\Helpers\FinanceHelper;
use Illuminate\Http\Request;
$balance = FinanceHelper::getCurrentBalance();
class ExpenseController extends Controller
{

    

     function __construct()
{
     $this->middleware('permission:account-list', ['only' => ['index', 'show', ]]);
     $this->middleware('permission:account-create', ['only' => ['create', 'store']]);
     $this->middleware('permission:account-edit', ['only' => ['edit', 'update']]);
     $this->middleware('permission:account-delete', ['only' => ['destroy']]);
}
    public function index(Request $request)
    {
        // جلب المصروفات مع التاغات المرتبطة
        $query = Expense::with('tags');
    
        // البحث حسب الكلمات المفتاحية
        if ($request->has('search') && !empty($request->search)) {
            $query->where(function ($q) use ($request) {
                $q->where('type', 'LIKE', "%{$request->search}%")
                  ->orWhere('description', 'LIKE', "%{$request->search}%");
            });
        }
    
        // الفلترة حسب التواريخ
        if ($request->has('start_date') && $request->has('end_date') &&
            !empty($request->start_date) && !empty($request->end_date)) {
            $query->whereBetween('date', [$request->start_date, $request->end_date]);
        }
    
        // الفلترة حسب التاغات
        if ($request->has('tags') && is_array($request->tags) && count($request->tags) > 0) {
            $query->whereHas('tags', function ($tagQuery) use ($request) {
                $tagQuery->whereIn('tags.id', $request->tags); // فلترة حسب IDs التاغات
            });
        }
    
        // جلب المصروفات مع الترتيب
        $expenses = $query->orderBy('date', 'desc')->paginate(10);
    
        // جلب التاغات المتاحة
        $availableTags = Tag::all();
    
        // تمرير المصروفات والتاغات إلى العرض
        return view('expenses.index', compact('expenses', 'availableTags'));
    }
    
    

    





    public function create()
    {
        
    $availableTags = Tag::all();
    return view('expenses.create', compact('availableTags'));
    }




    public function store(Request $request)
    {
        // التحقق من صحة البيانات المدخلة
        $data = $request->validate([
            'type' => 'required|string|max:255',
            'description' => 'nullable|string',
            'amount' => 'required|numeric|min:0',
            'date' => 'required|date',
            'tags' => 'array',
        ]);
    
        // ✅ جلب الرصيد الحالي للصندوق
        $currentBalance = FinanceHelper::getCurrentBalance();
        $newBalance = $currentBalance - $data['amount']; // الرصيد المتوقع بعد خصم المصروف
    
        if ($currentBalance <= 0) {
            session()->flash('error', '❌ لا يمكن تسجيل المصروف لأن الصندوق فارغ أو سالب.');
            return redirect()->route('expenses.index');
        }
    
        if ($newBalance < 0) {
            session()->flash('error', '❌ لا يمكن تسجيل المصروف لأن الرصيد بعد الإضافة سيكون سالبًا.');
            return redirect()->route('expenses.index');
        }
    
    
        // ✅ إنشاء المصروف الجديد
        $expense = Expense::create([
            'type' => $data['type'],
            'description' => $data['description'] ?? null,
            'amount' => $data['amount'],
            'date' => $data['date'],
        ]);
    
        // ✅ ربط التاغات بالمصروف
        if (!empty($data['tags'])) {
            $expense->tags()->sync($data['tags']);
        }
    
        if ($request->has('new_tags')) {
            $newTags = explode(',', $request->new_tags);
            foreach ($newTags as $newTag) {
                $tag = Tag::firstOrCreate(['name' => trim($newTag)]);
                $expense->tags()->attach($tag->id);
            }
        }
    
        // ✅ إعادة التوجيه مع رسالة نجاح
        session()->flash('success', '✅ تم تسجيل المصروف بنجاح.');

        return redirect()->route('expenses.index');
    }
    







public function edit($id)
{
    $expense = Expense::with('tags')->findOrFail($id); // جلب المصروف باستخدام الـ ID
    $availableTags = Tag::all(); // جلب جميع التاغات المتاحة
    $selectedTags = $expense->tags ? $expense->tags->pluck('id')->toArray() : []; // التحقق من وجود التاغات

    return view('expenses.edit', compact('expense', 'availableTags', 'selectedTags'));
}




public function update(Request $request, $id)
{
    $data = $request->validate([
        'type' => 'required|string|max:255',
        'description' => 'nullable|string',
        'amount' => 'required|numeric|min:0',
        'date' => 'required|date',
        'tags' => 'array|exists:tags,id', // تأكد من أن التاغات موجودة
    ]);

    $expense = Expense::findOrFail($id);
    $expense->update($data);
    $expense->tags()->sync($data['tags'] ?? []);

    return redirect()->route('expenses.index')->with('success', 'Expense updated successfully.');
}


    public function destroy(Expense $expense)
    {
        $expense->delete();

        return redirect()->route('expenses.index')->with('success', 'Expense deleted successfully.');
    }
}
