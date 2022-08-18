<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Company extends Model
{
    use HasFactory;
    protected $table = 'companies';
    protected $primaryKey = 'COMPANY_ID';
    public const VARS_LENGTHS = [
        'COMPANY_ID' => 6,
        'COMPANY_NAME' => 25,
        'COMPANY_CITY' => 25
    ];
}
