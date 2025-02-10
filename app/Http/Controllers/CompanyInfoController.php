<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\CompanyInfo;

class CompanyInfoController extends Controller
{

    function __construct()
    {
         $this->middleware('permission:role-list|role-create|role-edit|role-delete', ['only' => ['index','store']]);
         $this->middleware('permission:role-create', ['only' => ['create','store']]);
         $this->middleware('permission:role-edit', ['only' => ['edit','update']]);
         $this->middleware('permission:role-delete', ['only' => ['destroy']]);
    } 
     
    public function index() {
        $info = CompanyInfo::first();
        return view('company_info.index', compact('info'));
    }



    public function update(Request $request) {
        $data = $request->validate([
            'name' => 'required|string|max:255',
            'report_name' => 'required|string|max:255',
            'logo' => 'nullable|image|max:2048',
            'address' => 'nullable|string|max:255',
            'phone' => 'nullable|string|max:255',
            'email' => 'nullable|email|max:255',
        ]);
    
        $info = CompanyInfo::first();
        if (!$info) {
            $info = new CompanyInfo();
        }
    
        if ($request->hasFile('logo')) {
            $data['logo'] = $request->file('logo')->store('logos', 'public');
        }
    
        $info->fill($data);
        $info->save();
    
        return redirect()->back()->with('success', 'تم تحديث معلومات الشركة بنجاح.');
    }
    

    public function generateReport() {
        $companyInfo = CompanyInfo::first(); // جلب بيانات الشركة
    
        // إضافة بيانات أخرى للتقرير حسب الحاجة
        $reportData = [
            // بيانات التقرير هنا
        ];
    
        return view('report', compact('companyInfo', 'reportData'));
    }
    
    
}
