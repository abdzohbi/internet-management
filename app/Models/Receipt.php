<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Receipt extends Model
{
    use HasFactory;

    protected $fillable = [
        'customer_id',
        'amount',
        'description',
        'date',
    ];

    public function customer()
    {
        return $this->belongsTo(Customer::class, 'customer_id','id');
    }

}
