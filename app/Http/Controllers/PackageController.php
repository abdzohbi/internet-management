<?php

namespace App\Http\Controllers;

use App\Models\Package;
use App\Models\Company;
use Illuminate\Http\Request;

class PackageController extends Controller
{
    function __construct()
{
     $this->middleware('permission:account-list', ['only' => ['index', 'show', 'outstandingReport', 'showTransactions']]);
     $this->middleware('permission:account-create', ['only' => ['create', 'store']]);
     $this->middleware('permission:account-edit', ['only' => ['edit', 'update']]);
     $this->middleware('permission:account-delete', ['only' => ['destroy']]);
}

    public function index()
    {
        $packages = Package::with('company')->get(); // جلب الباقات مع بيانات الشركة المرتبطة
        return view('packages.index', compact('packages'));
    }

    public function create()
    {
        $companies = Company::all(); // جلب جميع الشركات لإرفاقها بالباقة
        return view('packages.create', compact('companies'));
    }

    public function store(Request $request)
    {
        $data = $request->validate([
            'company_id' => 'required|exists:companies,id',
            'name' => 'required|string|max:255',
            'purchase_price' => 'required|numeric|min:0',
            'sale_price' => 'required|numeric|min:0',
        ]);

        Package::create($data);

        return redirect()->route('packages.index')->with('success', 'Package added successfully!');
    }

    public function edit(Package $package)
    {
        $companies = Company::all(); // جلب جميع الشركات
        return view('packages.edit', compact('package', 'companies'));
    }

    public function update(Request $request, Package $package)
    {
        $data = $request->validate([
            'company_id' => 'required|exists:companies,id',
            'name' => 'required|string|max:255',
            'purchase_price' => 'required|numeric|min:0',
            'sale_price' => 'required|numeric|min:0',
        ]);

        $package->update($data);

        return redirect()->route('packages.index')->with('success', 'Package updated successfully!');
    }

    public function destroy(Package $package)
    {
        $package->delete();

        return redirect()->route('packages.index')->with('success', 'Package deleted successfully!');
    }
}
