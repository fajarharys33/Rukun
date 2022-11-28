<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class newsModel extends Model
{
    //
    protected $table = 'news';
    protected $fillable = [ 'news_title',
                            'category',
                            'description',
                            'post_by',
                            'photo'];
}