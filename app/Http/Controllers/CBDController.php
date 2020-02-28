<?php
#app/Http/Controller/ShopFront.php
namespace App\Http\Controllers;


use App\Models\ShopNews;
use App\Models\ShopKnowledges;

use Illuminate\Http\Request;

class CBDController extends GeneralController
{
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Render news
     * @return [type] [description]
     */
    public function knowledge()
    {
        $knowledges = (new ShopKnowledges)
            ->getItemsNews($limit = sc_config('product_new'), $opt = 'paginate');
        return view(
            $this->templatePath . '.shop_knowledge',
            array(
                'title' => trans('front.knowledges'),
                'description' => sc_store('description'),
                'keyword' => sc_store('keyword'),
                'knowledges' => $knowledges,
            )
        );
    }

    /**
     * News detail
     *
     * @param   [string]  $alias
     * @param   [type]  $id
     *
     * @return  view
     */
    public function knowledgeDetail($alias)
    {
        $knowledge_currently = ShopKnowledges::where('alias', $alias)->first();
        if ($knowledge_currently) {
            $title = ($knowledge_currently) ? $knowledge_currently->title : trans('front.not_found');
            return view(
                $this->templatePath . '.shop_knowledge_detail',
                array(
                    'title' => $title,
                    'knowledge_currently' => $knowledge_currently,
                    'description' => sc_store('description'),
                    'keyword' => sc_store('keyword'),
                    'knowledge' => (new ShopKnowledges)->getItemsNews($limit = 4),
                    'og_image' => $knowledge_currently->getImage(),
                )
            );
        } else {
            return view(
                $this->templatePath . '.notfound',
                array(
                    'title' => trans('front.not_found'),
                    'description' => '',
                    'keyword' => sc_store('keyword'),
                    'msg' => trans('front.item_not_found'),
                )
            );
        }
    }

}
