<?php

namespace App\Models;

use App\Models\News;
use App\Models\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Real_Sources extends Model
{
    use HasFactory;

    public function user()
    {
        return $this->hasMany(User::class);
    }

    public function news()
    {
        return $this->hasMany(News::class);
    }

    protected $table ='real_sources';

    protected $fillable = [
        'name',
        'slug'
    ];
}
