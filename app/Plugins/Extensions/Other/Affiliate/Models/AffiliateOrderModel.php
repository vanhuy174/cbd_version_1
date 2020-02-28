<?php

namespace App\Plugins\Extensions\Other\Affiliate\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AffiliateOrderModel extends Model
{
    public $timestamps = true;
    public $table      = 'affiliate_order';
    protected $guarded = [];
    public const DONE = 5;
    public const FAILED = 4;
    public const UNCONFIRM = 0;
    public const CONFIRM = 1;
    public const CANCEL = 2;

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
                    $table->integer('order_id')->unsigned();
                    $table->decimal('earn_money', 15, 2)->default(0);
                    $table->string('affiliate_code', 191);
                    $table->boolean('status')->default(0);
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
}
