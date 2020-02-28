<?php

namespace App\Plugins\Extensions\Shipping\GHTK\Models;

use App\Admin\Models\AdminMenu;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Schema;

class GHTKOrderModel extends Model
{
    public $timestamps = true;
    public $table      = 'shipping_ghtk_orders';
    protected $guarded = [];
    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'is_freeship' => 'boolean',
        'use_return_address' => 'boolean',
    ];

    public function uninstall()
    {
        if (Schema::hasTable($this->table)) {
            Schema::drop($this->table);
        }
    }

    public function install()
    {
        if (!Schema::hasTable($this->table)) {
            try {
                Schema::create($this->table, function (Blueprint $table) {
                    $table->increments('id');
                    $table->integer('shop_order_id')->unsigned();
                    $table->string('ghtk_order_id')->nullable();
                    $table->string('weight_option')->nullable();
                    $table->double('total_weight')->nullable();
                    $table->string('pick_option')->nullable();
                    $table->string('transport')->nullable();
                    $table->integer('pick_money');
                    $table->integer('value')->nullable();
                    $table->boolean('is_freeship')->default(false);
                    $table->boolean('use_return_address')->default(false);
                    $table->string('return_name')->nullable();
                    $table->string('return_address')->nullable();
                    $table->string('return_province')->nullable();
                    $table->string('return_district')->nullable();
                    $table->string('return_tel')->nullable();
                    $table->string('return_email')->nullable();
                    $table->timestamps();
                });
            } catch (\Exception $e) {
                Log::error($e->getMessage());
            }
        }
    }
}
