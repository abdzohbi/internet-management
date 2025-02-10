<?php

namespace App\Http\Controllers;
use App\Models\Tag;
use Illuminate\Http\Request;

class TagController extends Controller
{
    /**
     * Display a listing of the resource.
     */

     function __construct()
{
     $this->middleware('permission:account-list', ['only' => ['index', 'show', 'outstandingReport', 'showTransactions']]);
     $this->middleware('permission:account-create', ['only' => ['create', 'store']]);
     $this->middleware('permission:account-edit', ['only' => ['edit', 'update']]);
     $this->middleware('permission:account-delete', ['only' => ['destroy']]);
}


    public function index()
    {
        $tags = Tag::all(); // جلب جميع التاغات
        return view('tags.index', compact('tags'));
    }
    

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('tags.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255|unique:tags,name',
        ]);
    
        Tag::create(['name' => $request->name]);
    
        return redirect()->route('tags.index')->with('success', 'Tag added successfully.');
    }
    
    

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $tag = Tag::findOrFail($id);
    
        // تحقق مما إذا كان التاغ مرتبطًا بأي مصروفات
        if ($tag->expenses()->exists()) {
            return redirect()->route('tags.index')->with('error', 'Cannot delete tag because it is associated with one or more expenses.');
        }
    
        // حذف التاغ إذا لم يكن مرتبطًا
        $tag->delete();
    
        return redirect()->route('tags.index')->with('success', 'Tag deleted successfully.');
    }
    
    
}
