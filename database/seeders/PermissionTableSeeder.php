<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;

class PermissionTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Disable foreign key constraints to allow truncating (if needed)
        DB::statement('SET FOREIGN_KEY_CHECKS=0;');
        DB::table('permissions')->delete(); // Use DELETE instead of TRUNCATE to avoid foreign key issues
        DB::statement('SET FOREIGN_KEY_CHECKS=1;');

        $adminRole = Role::firstOrCreate(['name' => 'Admin']);
        $userRole = Role::firstOrCreate(['name' => 'User']);


        $permissions = [
            'role-list', 'role-create', 'role-edit', 'role-delete',
            'dash-list', 'dash-create', 'dash-edit', 'dash-delete',
            'customer-list', 'customer-create', 'customer-edit', 'customer-delete', 
            'account-list', 'account-create', 'account-edit', 'account-delete',
            'settings-list', 'settings-create', 'settings-edit', 'settings-delete',
            'MaintenanceLog-list', 'MaintenanceLog-create', 'MaintenanceLog-edit', 'MaintenanceLog-delete',
            'reports-list', 'reports-create', 'reports-edit', 'reports-delete',
            'collector-list', 'collector-create', 'collector-edit', 'collector-delete'
        ];

        foreach ($permissions as $permissionName) {
            $permission = Permission::firstOrCreate(['name' => $permissionName]);

            // ربط الصلاحيات بدور المدير
            $adminRole->givePermissionTo($permission);
        }
    }
}
