<?php

namespace App\Plugins\Extensions\Other\Affiliate\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AffiliateUserModel extends Model
{
    public $timestamps = true;
    public $table      = 'affiliate_user';
    protected $guarded = [];

    public function uninstallExtension()
    {
        if (Schema::hasTable($this->table)) {
            Schema::drop($this->table);
        }
    }

    public function installExtension()
    {
        $return = ['error' => 0, 'msg' => 'Install extension success'];
        if (!Schema::hasTable($this->table)) {
            try {
                Schema::create($this->table, function (Blueprint $table) {
                    $table->increments('id');
                    $table->integer('user_id')->unsigned();
                    $table->string('affiliate_code', 191)->unique()->nullable();
                    $table->string('parent_code', 191)->nullable();
                    $table->decimal('affiliate_money', 15, 2)->default(0);
                    $table->timestamps();
                });
            } catch (\Exception $e) {
                $return = ['error' => 1, 'msg' => $e->getMessage()];
            }
        } else {
            $return = ['error' => 1, 'msg' => 'Table ' . $this->table . ' exist!'];
        }
        return $return;
    }

    public function user()
    {
        return $this->belongsTo('\App\Models\ShopUser', 'user_id', 'id');
    }
}
