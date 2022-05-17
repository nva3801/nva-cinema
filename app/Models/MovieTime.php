<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MovieTime extends Model
{
    use HasFactory;
    protected $fillable = [
        'date_id',
        'time',
        'status',
    ];
    public function date()
    {
        return $this->belongsTo(MovieDate::class, 'date_id', 'id');
    }
}