<?php

namespace App\Models;

use App\Models\Category as ModelsCategory;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Model\Category;
use Illuminate\Database\Eloquent\Model as Eloquent;


class Product extends Model
{
    use HasFactory;
    protected $table = 'Product';
    public $timestamps = false;
    public $fillable = [
        'ProductId',
        'ProductName',
        'Unit',
        'Price',
        'Description',
        'CategoryId',
        'Img'
    ];
    public function Category()
    {
        return $this->belongsTo(ModelsCategory::class, "CategoryId", "CategoryId");
    }
}
