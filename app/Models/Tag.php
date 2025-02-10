<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Tag extends Model
{
    // الحقول المسموح باستخدامها في التعيين الجماعي
    protected $fillable = ['name'];

    // العلاقة بين التاغات والمصاريف
    public function expenses()
    {
        return $this->belongsToMany(Expense::class, 'expense_tag', 'tag_id', 'expense_id');
    }
    
    
}
