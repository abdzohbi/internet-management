<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Subscription extends Model
{
    use HasFactory;

    protected $fillable = [
        'customer_id',
        'package_id',
        'package_name',
        'price',
        'start_date',
        'end_date',
    ];
    public function customer()
    {
        return $this->belongsTo(Customer::class);
        
    }
    public function package()
{
    return $this->belongsTo(Package::class);
}

}
