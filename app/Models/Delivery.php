<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Delivery extends Model
{

    
    protected $table = 'deliveries';
    protected $fillable=['matp','maqh','xaid','fee'];
}
