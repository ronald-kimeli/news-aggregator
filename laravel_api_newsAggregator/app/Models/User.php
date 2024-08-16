<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use App\Models\Author;
use App\Models\Sources;
use App\Models\Category;
use Laravel\Sanctum\HasApiTokens;
use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    public function sources()
    {
        return $this->belongsTo(Sources::class,'preferred_source_id');
    }

    public function category()
    {
        return $this->belongsTo(Category::class,'preferred_category_id');
    }

    public function authors()
    {
        return $this->belongsTo(Author::class,'preferred_author_id');
    } 

    protected $table ='users';

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name',
        'email',
        'password',
        'preferred_source_id',
        'preferred_category_id',
        'preferred_author_id',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
        'password' => 'hashed',
    ];
}
