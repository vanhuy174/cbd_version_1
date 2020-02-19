<?php

namespace App\Plugins\Extensions\Other\Affiliate\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AffiliateModel extends Model
{
    public $timestamps = true;
    public $table      = 'affiliate_config';
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
                    $table->integer('percen');
                    $table->timestamps();
                });
                $this->create(['percen' => 0]);
            } catch (\Exception $e) {
                $return = ['error' => 1, 'msg' => $e->getMessage()];
            }
        } else {
            $return = ['error' => 1, 'msg' => 'Table ' . $this->table . ' exist!'];
        }
        return $return;
    }
}
