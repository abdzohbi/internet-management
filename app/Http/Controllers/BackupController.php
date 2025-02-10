<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class BackupController extends Controller
{
    function __construct()
    {
         $this->middleware('permission:role-list|role-create|role-edit|role-delete', ['only' => ['index','store']]);
         $this->middleware('permission:role-create', ['only' => ['create','store']]);
         $this->middleware('permission:role-edit', ['only' => ['edit','update']]);
         $this->middleware('permission:role-delete', ['only' => ['destroy']]);
    } 

    public function backupNow()
    {
        // الحصول على بيانات الاتصال من .env
        $dbName = env('DB_DATABASE');
        $dbUser = env('DB_USERNAME');
        $dbPassword = env('DB_PASSWORD');
        $dbHost = env('DB_HOST');
    
        if (empty($dbName) || empty($dbUser) || empty($dbHost)) {
            return redirect()->back()->with('error', 'Database configuration is missing. Please check your .env file.');
        }
    
        // تحديد مسار النسخة الاحتياطية
        $backupDirectory = base_path('backups');
        $backupFileName = 'backup_' . now()->format('Y-m-d_H-i-s') . '.sql';
        $backupFilePath = $backupDirectory . DIRECTORY_SEPARATOR . $backupFileName;
    
        // إنشاء المجلد إذا لم يكن موجودًا
        if (!file_exists($backupDirectory)) {
            mkdir($backupDirectory, 0755, true);
        }
    
        // بناء أمر mysqldump
        $command = sprintf(
            'mysqldump --user=%s %s --host=%s %s > %s',
            $dbUser,
            $dbPassword ? "--password={$dbPassword}" : '',
            $dbHost,
            $dbName,
            $backupFilePath
        );
    
        // تنفيذ الأمر
        $output = null;
        $resultCode = null;
        exec($command, $output, $resultCode);
    
        // التحقق من نجاح النسخ الاحتياطي
        if ($resultCode === 0) {
            return redirect()->back()->with('success', 'Backup created successfully: ' . $backupFileName);
        } else {
            return redirect()->back()->with('error', 'Failed to create backup. Please check server configuration.');
        }
    }
    

}

