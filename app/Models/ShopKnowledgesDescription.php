<?php
#app/Models/ShopNewsDescription.php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ShopKnowledgesDescription extends Model
{
    protected $primaryKey = ['lang', 'shop_knowledges_id'];
    public $incrementing = false;
    protected $guarded = [];
    public $timestamps = false;
    public $table = 'shop_knowledges_description';
    protected $fillable = ['lang', 'title', 'description', 'keyword', 'shop_knowledges_id', 'content'];
}
