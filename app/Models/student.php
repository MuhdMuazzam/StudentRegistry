<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Str;
use Faker\Factory as Faker; 

class student extends Model
{
    use HasFactory;
    protected $fillable = ['id',
    'name',
    'email',
    'address',
    'studycourse'
];
}
