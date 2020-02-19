<?php

namespace App\Plugins\Extensions\Other\Affiliate;

use App\Models\AdminConfig;
use App\Plugins\Extensions\ConfigDefault;
use App\Plugins\Extensions\Other\Affiliate\Models\AffiliateModel;

class AppConfig extends ConfigDefault
{
    protected $configGroup = 'Extensions';
    protected $configCode = 'Other';
    protected $configKey = 'Affiliate';

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
            (new AffiliateModel())->installExtension();
        }
        return $return;
    }

    public function uninstall()
    {
        $return = ['error' => 0, 'msg' => ''];
        $process = (new AdminConfig)->where('key', $this->configKey)->delete();
        (new AffiliateModel())->uninstallExtension();
        if (!$process) {
            $return = ['error' => 1, 'msg' => 'Error when uninstall'];
        }
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
        return view($this->pathPlugin.'::Affiliate')->with(
            [
                'group' => $this->configCode,
                'key' => $this->configKey,
                'title' => $this->title,
                'pathPlugin' => $this->pathPlugin,
                'data' => AffiliateModel::first(),
            ]);
    }

    public function process($data)
    {
        $return = ['error' => 0, 'msg' => ''];
        $process = AffiliateModel::where('id', $data['pk'])
            ->update([$data['name'] => $data['value']]);
        if (!$process) {
            $return = ['error' => 1, 'msg' => 'Error update'];
        }
        return $return;
    }


    public function getData()
    {
        $arrData = [
            'title' => $this->title,
            'code' => $this->configKey,
            'image' => $this->image,
            'permission' => self::ALLOW,
            'version' => $this->version,
            'auth' => $this->auth,
            'link' => $this->link,
        ];
        return $arrData;
    }

}
