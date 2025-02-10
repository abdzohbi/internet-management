<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Spatie\Permission\Traits\HasRoles;

class Customer extends Model
{
    use HasFactory;

    protected $fillable = ['username','full_name', 'phone', 'town', 'address','connection_point_id'];

    public function subscriptions()
    {
        return $this->hasMany(Subscription::class);
    }

    public function maintenanceLogs()
    {
        return $this->hasMany(MaintenanceLog::class);
    }

    public function receipts()
    {
        return $this->hasMany(Receipt::class, 'customer_id');
    }
    public function connectionPoint()
    {
        return $this->belongsTo(ConnectionPoint::class);
    }
}
