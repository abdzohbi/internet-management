<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers;
use App\Http\Controllers\CompanyController;
use App\Http\Controllers\CustomerController;
use App\Http\Controllers\ExpenseController;
use App\Http\Controllers\MaintenanceLogController;
use App\Http\Controllers\ReceiptController;
use App\Http\Controllers\SubscriptionController;
use App\Http\Controllers\PackageController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\ReportsController;
use App\Http\Controllers\ConnectionPointController;
use App\Http\Controllers\BackupController;
use App\Http\Controllers\CompanyInfoController;
use App\Http\Controllers\TagController;


use App\Http\Controllers\HomeController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\UserController;
   
Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', [HomeController::class, 'index'])->name('home');
  
Route::group(['middleware' => ['auth']], function() {


Route::get('/', [DashboardController::class, 'index'])->name('dashboard');
Route::resource('customers', CustomerController::class);
Route::resource('subscriptions', SubscriptionController::class);
Route::resource('companies', CompanyController::class);
Route::resource('expenses', ExpenseController::class);
Route::resource('maintenance_logs', MaintenanceLogController::class);
Route::resource('receipts', ReceiptController::class);
Route::resource('packages', PackageController::class);
Route::resource('connection_points', ConnectionPointController::class);
Route::resource('tags', TagController::class)->only(['index', 'store', 'create', 'destroy']);

Route::get('/company-info', [CompanyInfoController::class, 'index'])->name('company-info.index');
Route::put('/company-info', [CompanyInfoController::class, 'update'])->name('company-info.update');

//reports 

Route::get('customers/{id}/report', [CustomerController::class, 'report'])->name('customers.report');
Route::get('reports/outstanding-customers', [ReportsController::class, 'outstandingCustomers'])->name('reports.outstanding_customers');
Route::get('/reports/export-receipts', [ReportsController::class, 'exportReceipts'])->name('reports.export.receipts');

Route::get('/reports', [ReportsController::class, 'index'])->name('reports.index');
Route::get('/reports/financial', [ReportsController::class, 'financialReport'])->name('reports.financial');

Route::get('/receipt/{id}/print', [ReceiptController::class, 'print'])->name('receipt.print');


Route::get('/reports/export-customers-balance', [ReportsController::class, 'exportCustomersWithBalance'])
     ->name('reports.export.customers.balance');

Route::get('/customers/{id}/transactions', [CustomerController::class, 'showTransactions'])->name('customers.transactions');

Route::get('/backup/now', [BackupController::class, 'backupNow'])->name('backup.now');
Route::get('/backup/import', [BackupController::class, 'importBackup'])->name('backup.import');
Route::get('maintenance_logs/customer/{customer}', [MaintenanceLogController::class, 'logsByCustomer'])->name('maintenance_logs.by_customer');


Route::resource('roles', RoleController::class);
    Route::resource('users', UserController::class);
    //Route::resource('products', ProductController::class);


});
