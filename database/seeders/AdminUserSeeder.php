<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Illuminate\Support\Facades\Hash;

class AdminUserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Ensure an admin role exists
        $adminRole = Role::firstOrCreate(['name' => 'admin']);

        // Ensure all permissions exist
        $allPermissions = Permission::pluck('name')->toArray();
        $adminRole->syncPermissions($allPermissions); // Assign all permissions to the role

        // Create an admin user
        $admin = User::updateOrCreate(
            ['email' => 'admin@varnet'], // Change email as needed
            [
                'name' => 'Admin User',
                'email' => 'admin@varnet',
                'password' => Hash::make('123123123'), // Change this to a secure password
            ]
        );

        // Assign the admin role
        $admin->assignRole($adminRole);

        // 🔹 Directly give all permissions to the admin user (optional but ensures access)
        $admin->syncPermissions($allPermissions);

        echo "✅ Admin user created successfully with all permissions.\n";
        echo "👉 Login: admin@example.com | Password: password123\n";
    }
}
