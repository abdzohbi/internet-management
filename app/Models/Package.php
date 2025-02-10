<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Package extends Model
{
    use HasFactory;

    protected $fillable = [
        'company_id',
        'name',
        'purchase_price',
        'sale_price',
    ];

    public function company()
    {
        return $this->belongsTo(Company::class);
    }

    public function subscriptions()
    {
        return $this->hasMany(Subscription::class);
    }
}
