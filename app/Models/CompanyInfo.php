<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CompanyInfo extends Model
{
    protected $fillable = [
        'name', 'report_name', 'logo', 'address', 'phone', 'email'
    ];
    
}
