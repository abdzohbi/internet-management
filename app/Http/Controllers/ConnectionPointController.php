<?php

namespace App\Http\Controllers;

use App\Models\ConnectionPoint;
use Illuminate\Http\Request;

class ConnectionPointController extends Controller
{    function __construct()
    {
         $this->middleware('permission:account-list', ['only' => ['index', 'show', 'outstandingReport', 'showTransactions']]);
         $this->middleware('permission:account-create', ['only' => ['create', 'store']]);
         $this->middleware('permission:account-edit', ['only' => ['edit', 'update']]);
         $this->middleware('permission:account-delete', ['only' => ['destroy']]);
    }

    // عرض جميع النقاط
    public function index()
    {
        $connectionPoints = ConnectionPoint::all();
        return view('connection_points.index', compact('connectionPoints'));
    }

    // عرض نموذج إضافة نقطة جديدة
    public function create()
    {
        return view('connection_points.create');
    }

    // تخزين نقطة جديدة في قاعدة البيانات
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'station' => 'nullable|string|max:255',
        ]);

        ConnectionPoint::create($request->all());

        return redirect()->route('connection_points.index')->with('success', 'Connection Point added successfully.');
    }

    // عرض نموذج تعديل نقطة
    public function edit(ConnectionPoint $connectionPoint)
    {
        return view('connection_points.edit', compact('connectionPoint'));
    }

    // تحديث بيانات نقطة موجودة
    public function update(Request $request, ConnectionPoint $connectionPoint)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'station' => 'nullable|string|max:255',
        ]);

        $connectionPoint->update($request->all());

        return redirect()->route('connection_points.index')->with('success', 'Connection Point updated successfully.');
    }

    // حذف نقطة
    public function destroy(ConnectionPoint $connectionPoint)
    {
        $connectionPoint->delete();

        return redirect()->route('connection_points.index')->with('success', 'Connection Point deleted successfully.');
    }
}
