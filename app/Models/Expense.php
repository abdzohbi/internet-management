<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Expense extends Model
{
    use HasFactory;

    protected $fillable = [
        'type',
        'description',
        'amount',
        'date',
    ];

    public function tags()
    {
        return $this->belongsToMany(Tag::class, 'expense_tag', 'expense_id', 'tag_id');
    }
    
    

}
