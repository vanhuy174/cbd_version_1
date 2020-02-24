<?php

namespace App\Plugins\Extensions\Other\Affiliate\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AffiliateWithdrawModel extends Model
{
    public $timestamps = true;
    public $table      = 'affiliate_withdraw';
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
                    $table->string('bank', 191);
                    $table->string('branch', 191);
                    $table->string('card_name', 191);
                    $table->string('card_number', 191);
                    $table->timestamps();
                });
                Schema::table($this->table, function (Blueprint $table) {
                    $table->foreign('user_id')->references('id')->on('shop_user');
                });
            } catch (\Exception $e) {
                $return = ['error' => 1, 'msg' => $e->getMessage()];
            }
        } else {
            $return = ['error' => 1, 'msg' => 'Table ' . $this->table . ' exist!'];
        }
        return $return;
    }
}
