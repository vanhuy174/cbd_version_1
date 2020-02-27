<?php
#app/Http/Controller/ShopFront.php
namespace App\Http\Controllers;

use App\Models\ShopAttributeGroup;
use App\Models\ShopBrand;
use App\Models\ShopBanner;
use App\Models\ShopCategory;
use App\Models\ShopProduct;
use App\Models\ShopVendor;
use Illuminate\Http\Request;

class CBDController extends GeneralController
{
    public function __construct()
    {
        parent::__construct();
    }
    /**
     * [index description]
     * @return [type] [description]
     */
    public function knowledge(Request $request)
    {
        return view($this->templatePath . '.shop_knowledge');
    }

}
