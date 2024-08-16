<?php

namespace App\Models;

use App\Models\News;
use App\Models\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Category extends Model
{
    use HasFactory;

    public function users()
    {
        return $this->hasMany(User::class);
    }

    public function news()
    {
        return $this->hasMany(News::class);
    }

    protected $table ='categories';

    protected $fillable = [
        'name',
        'slug'
    ];
}
