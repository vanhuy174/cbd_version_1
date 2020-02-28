<?php

namespace App\Plugins\Extensions\Shipping\GHTK;

use App\Models\AdminConfig;
use App\Plugins\Extensions\ConfigDefault;
use App\Plugins\Extensions\Shipping\GHTK\Models\GHTKModel;

class AppConfig extends ConfigDefault
{
    protected $configGroup = 'Extensions';
    protected $configCode = 'Shipping';
    protected $configKey = 'GHTK';

    public function __construct()
    {
        $this->pathPlugin = $this->configGroup . '/' . $this->configCode . '/' . $this->configKey;
        $this->title = trans($this->pathPlugin.'::'.$this->configKey . '.title');
        $this->image = 'images/' . $this->pathPlugin . '.png';
        $this->version = '1.0';
        $this->auth = 'Nong Van Du';
        $this->link = 'https://github.com/meesudzu';
    }

    public function install()
    {
        $return = ['error' => 0, 'msg' => ''];
        $check = AdminConfig::where('key', $this->configKey)->first();
        if ($check) {
            $return = ['error' => 1, 'msg' => 'Module exist'];
        } else {
            $process = AdminConfig::insert(
                [
                    'code' => $this->configCode,
                    'key' => $this->configKey,
                    'group' => $this->configGroup,
                    'sort' => 0, // Sort extensions in group
                    'value' => self::ON, //1- Enable extension; 0 - Disable
                    'detail' => $this->pathPlugin.'::' . $this->configKey . '.title',
                ]
            );
            if (!$process) {
                $return = ['error' => 1, 'msg' => 'Error when install'];
            } else {
                $return = (new GHTKModel())->installExtension();
            }
        }
        return $return;
    }

    public function uninstall()
    {
        $return = ['error' => 0, 'msg' => ''];
        $process = (new AdminConfig)->where('key', $this->configKey)->delete();
        if (!$process) {
            $return = ['error' => 1, 'msg' => 'Error when uninstall'];
        }
        (new GHTKModel())->uninstallExtension();
        return $return;
    }
    public function enable()
    {
        $return = ['error' => 0, 'msg' => ''];
        $process = (new AdminConfig)->where('key', $this->configKey)->update(['value' => self::ON]);
        if (!$process) {
            $return = ['error' => 1, 'msg' => 'Error enable'];
        }
        return $return;
    }
    public function disable()
    {
        $return = ['error' => 0, 'msg' => ''];
        $process = (new AdminConfig)->where('key', $this->configKey)->update(['value' => self::OFF]);
        if (!$process) {
            $return = ['error' => 1, 'msg' => 'Error disable'];
        }
        return $return;
    }

    public function config()
    {
        return view($this->pathPlugin.'::GHTK')->with(
            [
                'group' => $this->configCode,
                'key' => $this->configKey,
                'title' => $this->title,
                'pathPlugin' => $this->pathPlugin,
                'data' => GHTKModel::first(),
            ]);
    }

    public function process($data)
    {
        $return = ['error' => 0, 'msg' => ''];
        $process = GHTKModel::where('id', $data['pk'])
            ->update([$data['name'] => $data['value']]);
        if (!$process) {
            $return = ['error' => 1, 'msg' => 'Error update'];
        }
        return $return;
    }


    public function getData()
    {
        $subtotal = \Cart::subtotal();
        $shipping = GHTKModel::first();
        if ($subtotal >= $shipping->shipping_free) {
            $arrData = [
                'title' => $this->title,
                'code' => $this->configKey,
                'image' => $this->image,
                'permission' => self::ALLOW,
                'value' => 0,
                'version' => $this->version,
                'auth' => $this->auth,
                'link' => $this->link,
            ];
        } else {
            $arrData = [
                'title' => $this->title,
                'code' => $this->configKey,
                'image' => $this->image,
                'permission' => self::ALLOW,
                'value' => $shipping->fee,
                'version' => $this->version,
                'auth' => $this->auth,
                'link' => $this->link,
            ];

        }
        return $arrData;
    }

}
