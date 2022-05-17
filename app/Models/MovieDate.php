<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MovieDate extends Model
{
    use HasFactory;
    protected $fillable = [
        'movie_id',
        'date',
        'status',
    ];
    public function movie()
    {
        return $this->belongsTo(Movie::class, 'movie_id', 'id');
    }
}