<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Item extends Model
{
    use HasFactory;
    protected $fillable = ['name','description'];

    public function getCategory(){
         return $this->belongsToMany(Category::class, 'category_items');
     }
}
