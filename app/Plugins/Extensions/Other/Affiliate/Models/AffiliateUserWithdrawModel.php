<?php

namespace App\Plugins\Extensions\Other\Affiliate\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AffiliateUserWithdrawModel extends Model
{
    public $timestamps = true;
    public $table      = 'affiliate_user_withdraw';
    protected $guarded = [];

    public const UNCOMFIRM = 0;
    public const COMFIRM = 1;
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
                    $table->decimal('money', 15, 2)->default(0);
                    $table->string('transaction_id', 100)->nullable();
                    $table->text('note')->nullable();
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
