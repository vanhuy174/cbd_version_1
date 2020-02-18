<?php

namespace App\Plugins\Extensions\Shipping\GHTK\Models;

use App\Models\ShopShippingStatus;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Schema;

class GHTKModel extends Model
{
    public $timestamps = true;
    public $table      = 'shipping_ghtk';
    public $sandbox_url = 'https://dev.ghtk.vn';
    public $production_url = 'https://services.giaohangtietkiem.vn';
    protected $guarded = [];
    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'test_mode' => 'boolean',
    ];

    public function uninstallExtension()
    {
        if (Schema::hasTable($this->table)) {
            Schema::drop($this->table);
        }
        (new GHTKWarehouseModel())->uninstall();
        (new GHTKOrderModel())->uninstall();
        ShopShippingStatus::whereIn('id', [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 20, 21, 123, 127, 128, 45, 49, 410, 9999])->delete();
    }

    public function installExtension()
    {
        Log::info('create table');
        $return = ['error' => 0, 'msg' => 'Install extension success'];
        if (!Schema::hasTable($this->table)) {
            try {
                Schema::create($this->table, function (Blueprint $table) {
                    $table->increments('id');
                    $table->string('token')->nullable();
                    $table->integer('fee');
                    $table->integer('shipping_free');
                    $table->boolean('test_mode')->default(true);
                    $table->timestamps();
                });
                $this->insert(['fee' => 0, 'shipping_free' => 500000]);
                ShopShippingStatus::truncate();
                ShopShippingStatus::insert([
                    [
                        'id' => '1',
                        'name' => 'GHTK - Chưa tiếp nhận'
                    ],
                    [
                        'id' => '2',
                        'name' => 'GHTK - Đã tiếp nhận'
                    ],
                    [
                        'id' => '3',
                        'name' => 'GHTK - Đã lấy hàng/Đã nhập kho'
                    ],
                    [
                        'id' => '4',
                        'name' => 'GHTK - Đã điều phối giao hàng/Đang giao hàng
'
                    ],
                    [
                        'id' => '5',
                        'name' => 'GHTK - Đã giao hàng/Chưa đối soát'
                    ],
                    [
                        'id' => '6',
                        'name' => 'GHTK - Đã đối soát'
                    ],
                    [
                        'id' => '7',
                        'name' => 'GHTK - 	Không lấy được hàng'
                    ],
                    [
                        'id' => '8',
                        'name' => 'GHTK - Hoãn lấy hàng'
                    ],
                    [
                        'id' => '9',
                        'name' => 'GHTK - Không giao được hàng'
                    ],
                    [
                        'id' => '10',
                        'name' => 'GHTK - Delay giao hàng'
                    ],
                    [
                        'id' => '11',
                        'name' => 'GHTK - Đã đối soát công nợ trả hàng'
                    ],
                    [
                        'id' => '12',
                        'name' => 'GHTK - Đã điều phối lấy hàng/Đang lấy hàng'
                    ],
                    [
                        'id' => '13',
                        'name' => 'GHTK - Đơn hàng bồi hoàn'
                    ],
                    [
                        'id' => '20',
                        'name' => 'GHTK - Đang trả hàng (COD cầm hàng đi trả)'
                    ],
                    [
                        'id' => '21',
                        'name' => 'GHTK - Đã trả hàng (COD đã trả xong hàng)'
                    ],
                    [
                        'id' => '123',
                        'name' => 'GHTK - Shipper báo đã lấy hàng'
                    ],
                    [
                        'id' => '127',
                        'name' => 'GHTK - Shipper (nhân viên lấy/giao hàng) báo không lấy được hàng'
                    ],
                    [
                        'id' => '128',
                        'name' => 'GHTK - Shipper báo delay lấy hàng'
                    ],
                    [
                        'id' => '45',
                        'name' => 'GHTK - Shipper báo đã giao hàng'
                    ],
                    [
                        'id' => '49',
                        'name' => 'GHTK - Shipper báo không giao được giao hàng'
                    ],
                    [
                        'id' => '410',
                        'name' => 'GHTK - Shipper báo delay giao hàng'
                    ],
                    [
                        'id' => '9999',
                        'name' => 'GHTK - Hủy Đơn Hàng'
                    ],

                ]);
                (new GHTKWarehouseModel())->install();
                (new GHTKOrderModel())->install();
            } catch (\Exception $e) {
                $return = ['error' => 1, 'msg' => $e->getMessage()];
            }
        } else {
            $return = ['error' => 1, 'msg' => 'Table ' . $this->table . ' exist!'];
        }
        return $return;
    }

    public function getWebserviceUrl()
    {
        if ($this->test_mode) {
            return $this->sandbox_url;
        } else {
            return $this->production_url;
        }
    }
}
