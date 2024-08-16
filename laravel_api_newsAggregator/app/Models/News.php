<?php

namespace App\Models;

use App\Models\Author;
use App\Models\Sources;
use App\Models\Category;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class News extends Model
{
    use HasFactory;

    public function api_source_id()
    {
        return $this->belongsTo(Sources::class,'api_source_id');
    }

    public function real_source_id()
    {
        return $this->belongsTo(Real_Sources::class,'real_source_id');
    }

    public function category_id()
    {
        return $this->belongsTo(Category::class,'category_id');
    }

    public function author_id()
    {
        return $this->belongsTo(Author::class,'author_id');
    }

    // protected $table ='news';

    protected $fillable = [
        'title',
        'description',
        'content',
        'author_id',
        'api_source_id',
        'real_source_id',
        'category_id',
        'image_url',
        'web_url',
        'published_at',
    ];

}
