<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class usersModel extends Model
{
    //
    protected $table = 'users';
    protected $fillable = [ 'name',
                            'email',
                            'email_verified_at',
                            'password',
                            'remember_token'];
}