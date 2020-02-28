<?php

namespace App\Plugins\Extensions\Other\ExtCustomer\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class ExtOrderModel extends Model
{
    public $timestamps = true;
    public $table      = 'shop_order';
    protected $guarded = [];

    public function uninstallExtension()
    {
        Schema::table($this->table, function (Blueprint $table) {
            $table->dropColumn('province');
            $table->dropColumn('district');
            $table->dropColumn('ward');
            $table->dropColumn('address');
        });
    }

    public function installExtension()
    {
        $return = ['error' => 0, 'msg' => 'Install extension success'];
        try {
            Schema::table($this->table, function (Blueprint $table) {
                $table->string('province')->after('last_name')->nullable();
                $table->string('district')->after('province')->nullable();
                $table->string('ward')->after('district')->nullable();
                $table->string('address')->after('ward')->nullable();
            });
        } catch (\Exception $e) {
            $return = ['error' => 1, 'msg' => $e->getMessage()];
        }
        return $return;
    }
}
