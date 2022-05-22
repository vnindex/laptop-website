<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class proChillImage extends Model
{
    protected $table = 'HinhAnhCon';
    protected $primaryKey = 'chill_id';
    

    protected $fillable = [
        'pro_id',
        'chill_image',
    ];

    public function product()
    {
        return $this->belongsTo(Product::class, 'pro_id');
    }
}
