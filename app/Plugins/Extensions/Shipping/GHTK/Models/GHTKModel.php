<?php

namespace App\Plugins\Extensions\Shipping\GHTK\Models;

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
