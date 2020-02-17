<?php


namespace App\Plugins\Extensions\Shipping\GHTK\Controllers;

use App\Http\Controllers\Controller;
use App\Models\ShopShippingStatus;
use App\Plugins\Extensions\Shipping\GHTK\AppConfig;
use App\Plugins\Extensions\Shipping\GHTK\Models\GHTKWarehouseModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class GHTKWarehouseController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index()
    {
        $data = [
            'title' => 'Danh sách kho hàng GHTK',
            'sub_title' => '',
            'icon' => 'fa fa-indent',
            'menu_left' => '',
            'menu_right' => '',
            'menu_sort' => '',
            'script_sort' => '',
            'menu_search' => '',
            'script_search' => '',
            'listTh' => '',
            'dataTr' => '',
            'pagination' => '',
            'result_items' => '',
            'url_delete_item' => '',
        ];

        $listTh = [
            'id' => 'ID',
            'warehouse_name' => 'Tên kho hàng',
            'pick_address_id' => 'Mã kho hàng trên GHTK',
            'pick_name' => 'Tên chủ SHOP',
            'pick_tel' => 'SĐT',
            'pick_address' => 'Địa chỉ',
            'is_primary' => 'Kho chính',
            'action' => 'Thao Tác',
        ];
        $obj = new GHTKWarehouseModel();
        $obj = $obj->orderBy('id', 'desc');
        $dataTmp = $obj->paginate(20);

        $dataTr = [];
        foreach ($dataTmp as $key => $row) {
            $address = $row['pick_address'];
            if (!is_null($row['pick_ward']))
                $address .= ', ' . $row['pick_ward'];
            if (!is_null($row['pick_street']))
                $address .= ', ' . $row['pick_street'];
            if (!is_null($row['pick_district']))
                $address .= ', ' . $row['pick_district'];
            if (!is_null($row['pick_province']))
                $address .= ', ' . $row['pick_province'];
            $dataTr[] = [
                'id' => $row['id'],
                'warehouse_name' => $row['warehouse_name'],
                'pick_address_id' => $row['pick_address_id'],
                'pick_name' => $row['pick_name'],
                'pick_tel' => $row['pick_tel'],
                'pick_address' => $address,
                'is_primary' => $row['is_primary'] == 1 ? 'Có' : 'Không',
                'action' => '
                    <a href="' . route('ghtk.warehouses.edit', ['id' => $row['id']]) . '">
                    <span title="Sửa" type="button" class="btn btn-flat btn-primary">
                    <i class="fa fa-edit"></i>
                    </span>
                    </a>&nbsp;

                  <span onclick="deleteItem(' . $row['id'] . ');"  title="Xóa" class="btn btn-flat btn-danger"><i class="fa fa-trash"></i></span>
                  ',
            ];
        }

        $data['listTh'] = $listTh;
        $data['dataTr'] = $dataTr;
        $data['pagination'] = $dataTmp->appends(request()->except(['_token', '_pjax']))->links('admin.component.pagination');
        $data['result_items'] = trans('shipping_status.admin.result_item', ['item_from' => $dataTmp->firstItem(), 'item_to' => $dataTmp->lastItem(), 'item_total' => $dataTmp->total()]);

//menu_left
        $data['menu_left'] = '<div class="pull-left">
                      <a class="btn   btn-flat btn-primary grid-refresh" title="Refresh"><i class="fa fa-refresh"></i><span class="hidden-xs"> ' . trans('shipping_status.admin.refresh') . '</span></a> &nbsp;
                      </div>';
//=menu_left

//menu_right
        $data['menu_right'] = '<div class="btn-group pull-right" style="margin-right: 10px">
                           <a href="' . route('ghtk.warehouses.create') . '" class="btn  btn-success  btn-flat" title="New" id="button_create_new">
                           <i class="fa fa-plus"></i><span class="hidden-xs">' . trans('shipping_status.admin.add_new') . '</span>
                           </a>
                        </div>';
//=menu_right

        $data['url_delete_item'] = route('ghtk.warehouses.delete');

        return view('admin.screen.list')
            ->with($data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function create()
    {
        $data = [
            'title' => 'Thêm kho hàng',
            'sub_title' => '',
            'title_description' => '',
            'icon' => 'fa fa-plus',
            'obj' => [],
            'url_action' => route('ghtk.warehouses.store'),
        ];
        return view((new AppConfig())->pathPlugin.'::create_warehouse')
            ->with($data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(Request $request)
    {
        $dataOrigin = request()->all();
        $validator = Validator::make($dataOrigin, [
            'warehouse_name' => 'required',
            'pick_name' => 'required',
            'pick_address' => 'required',
            'pick_province' => 'required',
            'pick_district' => 'required',
            'pick_tel' => 'required',
        ], [
            'warehouse_name.required' => 'Tên kho hàng không được để trống',
            'pick_name.required' => 'Tên chủ shop không được để trống',
            'pick_address.required' => 'Địa chỉ không được để trống',
            'pick_province.required' => 'Tỉnh thành không được để trống',
            'pick_district.required' => 'Quận/huyện không được để trống',
            'pick_tel.required' => 'Số điện thoại không được để trống',
        ]);

        if ($validator->fails()) {
            return redirect()->back()
                ->withErrors($validator)
                ->withInput();
        }

        GHTKWarehouseModel::create($dataOrigin);

        return redirect()->route('ghtk.warehouses.index')->with('success', 'Thêm kho hàng thành công');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return string
     */
    public function edit($id)
    {
        $obj = GHTKWarehouseModel::findOrFail($id);

        $data = [
            'title' => 'Sửa thông tin kho hàng',
            'sub_title' => '',
            'title_description' => '',
            'icon' => 'fa fa-pencil-square-o',
            'obj' => $obj,
            'url_action' => route('ghtk.warehouses.update', ['id' => $obj['id']]),
        ];
        return view((new AppConfig())->pathPlugin.'::create_warehouse')
            ->with($data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(Request $request, $id)
    {
        $dataOrigin = request()->all();
        $validator = Validator::make($dataOrigin, [
            'warehouse_name' => 'required',
            'pick_name' => 'required',
            'pick_address' => 'required',
            'pick_province' => 'required',
            'pick_district' => 'required',
            'pick_tel' => 'required',
        ], [
            'warehouse_name.required' => 'Tên kho hàng không được để trống',
            'pick_name.required' => 'Tên chủ shop không được để trống',
            'pick_address.required' => 'Địa chỉ không được để trống',
            'pick_province.required' => 'Tỉnh thành không được để trống',
            'pick_district.required' => 'Quận/huyện không được để trống',
            'pick_tel.required' => 'Số điện thoại không được để trống',
        ]);

        if ($validator->fails()) {
            return redirect()->back()
                ->withErrors($validator)
                ->withInput();
        }

        $obj = GHTKWarehouseModel::findOrFail($id);
        $obj->update($dataOrigin);

        return redirect()->route('ghtk.warehouses.update', $id)->with('success', 'Cập nhật thông tin kho hàng thành công');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function destroy()
    {
        if (!request()->ajax()) {
            return response()->json(['error' => 1, 'msg' => 'Method not allow!']);
        } else {
            $ids = request('ids');
            $arrID = explode(',', $ids);
            GHTKWarehouseModel::destroy($arrID);
            return response()->json(['error' => 0, 'msg' => '']);
        }
    }
}
