<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Agent extends Model
{
    use HasFactory;
    protected $table = 'agents';
    protected $primaryKey = 'id';
    public const VARS_LENGTHS = [
        'id' => 5,
        'AGENT_NAME' => 40,
        'WORKING_AREA' => 35,
        'COMMISSION' => 12,
        'PHONE_NO' => 15,
        'COUNTRY' => 25
    ];
}
