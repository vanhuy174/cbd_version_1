<?php

namespace App\Plugins\Extensions\Shipping\GHTK\Models;

use App\Admin\Models\AdminMenu;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Schema;

class GHTKWarehouseModel extends Model
{
    public $timestamps = true;
    public $table      = 'shipping_ghtk_warehouses';
    protected $guarded = [];
    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'is_primary' => 'boolean',
    ];

    public function uninstall()
    {
        if (Schema::hasTable($this->table)) {
            Schema::drop($this->table);
        }
        $dataInsert = [
            'title' => 'Quản lý kho hàng GHTK',
            'parent_id' => 1,
            'uri' => 'route::ghtk.warehouses.index',
            'icon' => 'fa-bank',
            'sort' => 7,
        ];
        AdminMenu::where($dataInsert)->delete();
    }

    public function install()
    {
        if (!Schema::hasTable($this->table)) {
            try {
                Schema::create($this->table, function (Blueprint $table) {
                    $table->increments('id');
                    $table->string('warehouse_name');
                    $table->string('pick_address_id')->nullable();
                    $table->string('pick_name');
                    $table->string('pick_address');
                    $table->string('pick_province');
                    $table->string('pick_district');
                    $table->string('pick_ward')->nullable();
                    $table->string('pick_street')->nullable();
                    $table->string('pick_tel');
                    $table->string('pick_email')->nullable();
                    $table->boolean('is_primary')->default(false);
                    $table->timestamps();
                });
                $dataInsert = [
                    'title' => 'Quản lý kho hàng GHTK',
                    'parent_id' => 1,
                    'uri' => 'route::ghtk.warehouses.index',
                    'icon' => 'fa-bank',
                    'sort' => 7,
                ];
                AdminMenu::createMenu($dataInsert);
            } catch (\Exception $e) {
                Log::error($e->getMessage());
            }
        }
    }
}
