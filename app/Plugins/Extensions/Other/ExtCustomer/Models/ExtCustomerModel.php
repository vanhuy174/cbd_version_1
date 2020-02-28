<?php

namespace App\Plugins\Extensions\Other\ExtCustomer\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class ExtCustomerModel extends Model
{
    public $timestamps = true;
    public $table      = 'shop_user';
    protected $guarded = [];

    public function uninstallExtension()
    {
        Schema::table($this->table, function (Blueprint $table) {
            $table->dropColumn('province');
            $table->dropColumn('district');
            $table->dropColumn('ward');
            $table->dropColumn('address');
            $table->dropColumn('last_name');
            $table->dropColumn('birthday');
            $table->dropColumn('province');
            $table->dropColumn('district');
            $table->dropColumn('ward');
            $table->dropColumn('address');
            $table->dropColumn('postcode');
            $table->dropColumn('address1');
            $table->dropColumn('address2');
            $table->dropColumn('company');
            $table->dropColumn('phone');
            $table->dropColumn('remember_token');
            $table->dropColumn('created_at');
            $table->dropColumn('updated_at');
        });
    }

    public function installExtension()
    {
        $return = ['error' => 0, 'msg' => 'Install extension success'];
        try {
            Schema::table($this->table, function (Blueprint $table) {
                $table->string('province')->after('password')->nullable();
                $table->string('district')->after('province')->nullable();
                $table->string('ward')->after('district')->nullable();
                $table->string('address')->after('ward')->nullable();
                $table->string('last_name')->after('last_name')->nullable();
                $table->string('birthday')->after('birthday')->nullable();
                $table->string('province')->after('province')->nullable();
                $table->string('district')->after('district')->nullable();
                $table->string('ward')->after('ward')->nullable();
                $table->string('address')->after('address')->nullable();
                $table->string('postcode')->after('postcode')->nullable();
                $table->string('address1')->after('address1')->nullable();
                $table->string('address2')->after('address2')->nullable();
                $table->string('company')->after('company')->nullable();
                $table->string('phone')->after('phone')->nullable();
                $table->string('remember_token')->after('remember_token')->nullable();
                $table->string('created_at')->after('created_at')->nullable();
                $table->string('updated_at')->after('updated_at')->nullable();
            });
        } catch (\Exception $e) {
            $return = ['error' => 1, 'msg' => $e->getMessage()];
        }
        return $return;
    }
}
