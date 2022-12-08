<?php

namespace App\Models;

use App\Models\Product as ModelsProduct;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Model\Product;

class Category extends Model
{
    use HasFactory;
    protected $table = 'Category';
    public $timestamps = false;
    protected $fillable = [
        'CategoryId',
        'CategoryName'
    ];
    public function Product($value = '')
    {
        return $this->hasMany(ModelsProduct::class, "CategoryId", "CategoryId");
    }
}
