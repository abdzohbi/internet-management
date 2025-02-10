<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ConnectionPoint extends Model
{
    use HasFactory;

    protected $fillable = ['name', 'station'];

    public function customers()
    {
        return $this->hasMany(Customer::class);
    }
}
