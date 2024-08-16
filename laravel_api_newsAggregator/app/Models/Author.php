<?php

namespace App\Models;

use App\Models\News;
use App\Models\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Author extends Model
{
    use HasFactory;

    public function news()
    {
        return $this->hasMany(News::class);
    }

    public function users()
    {
        return $this->hasMany(User::class);
    }

    protected $table ='authors';

    protected $fillable = [
        'name',
        'slug'
    ];
}
