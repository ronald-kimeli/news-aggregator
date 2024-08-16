<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Sources extends Model
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

    protected $table ='sources';

    protected $fillable = [
        'name',
        'slug'
    ];
}
