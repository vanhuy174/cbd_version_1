@extends($templatePath.'.shop_layout')

@section('center')
    <div class="bliccaThemes-shop bliccaThemes-shop-grid4">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <header class="woocommerce-products-header" style="border-bottom: 1px solid; margin-bottom: 3%;">
                        <div class="row" style="height: 40px;">
                            <div class="col-md-9 col-sm-9 col-xs-9"><p class="woocommerce-result-count">Showing 1&ndash;10 of 23
                                    results </p></div>
                            <div class="col-md-3  col-sm-3 col-xs-3">
                                <form action="" method="GET" id="filter_sort">
                                    <div class="pull-right">
                                        <div>
                                            @php
                                                $queries = request()->except(['filter_sort','page']);
                                            @endphp
                                            @foreach ($queries as $key => $query)
                                                <input type="hidden" name="{{ $key }}" value="{{ $query }}">
                                            @endforeach
                                            <select class="form-control" name="filter_sort">
                                                <option value="">{{ trans('front.filters.sort') }}</option>
                                                <option value="price_asc" {{ ($filter_sort =='price_asc')?'selected':'' }}>{{ trans('front.filters.price_asc') }}</option>
                                                <option value="price_desc" {{ ($filter_sort =='price_desc')?'selected':'' }}>{{ trans('front.filters.price_desc') }}</option>
                                                <option value="sort_asc" {{ ($filter_sort =='sort_asc')?'selected':'' }}>{{ trans('front.filters.sort_asc') }}</option>
                                                <option value="sort_desc" {{ ($filter_sort =='sort_desc')?'selected':'' }}>{{ trans('front.filters.sort_desc') }}</option>
                                                <option value="id_asc" {{ ($filter_sort =='id_asc')?'selected':'' }}>{{ trans('front.filters.id_asc') }}</option>
                                                <option value="id_desc" {{ ($filter_sort =='id_desc')?'selected':'' }}>{{ trans('front.filters.id_desc') }}</option>
                                            </select>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </header>
                    <div class="wpb_column vc_column_container vc_col-sm-12">
                        <div class="vc_column-inner ">
                            <div class="wpb_wrapper">
                                <div class="woocommerce columns-4">
                                    <ul class="products columns-4">
                                        @if (count($products) ==0)
                                            {{ trans('front.empty_product') }}
                                        @else
                                            @foreach ($products as  $key => $product)
                                                <li class="post-233 custom-product-01 custom-product-style product type-product status-publish has-post-thumbnail product_cat-clothing product_cat-hoodies  instock shipping-taxable purchasable product-type-simple">
                                                    <a href="{{ $product->getUrl() }}"
                                                       class="woocommerce-LoopProduct-link woocommerce-loop-product__link">
                                                        <div class="bliccathemes-shop-thumb">
                                                            <img width="300" height="300"
                                                                 src="{{ asset($product->getThumb()) }}"
                                                                 class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail wp-post-image"
                                                                 alt=""
                                                                 srcset="{{ asset($product->getThumb()) }} 300w, {{ asset($product->getThumb()) }} 150w, {{ asset($product->getThumb()) }} 100w"
                                                                 sizes="(max-width: 300px) 100vw, 300px"/></div>
                                                        <a href="{{ $product->getUrl() }}">
                                                            <h4 style="color: forestgreen;">{{ $product->name }}</h4>
                                                        </a><br>
                                                        <span class="price">
                                                            <span class="woocommerce-Price-amount amount">
                                                                <span class="woocommerce-Price-currencySymbol">{!! $product->showPrice() !!}</span>
                                                            </span>
                                                        </span>

                                                    </a>
                                                    <button href=""
                                                            data-quantity="1"
                                                            class="button product_type_simple add_to_cart_button btn btn-default add-to-cart"
                                                            data-product_id="233" data-product_sku=""
                                                            aria-label="Add &ldquo;Apple Pack&rdquo; to your cart"
                                                            rel="nofollow"
                                                            onClick="addToCartAjax('{{ $product->id }}','default')"
                                                    >Add to cart
                                                    </button>
                                                </li>
                                            @endforeach
                                        @endif
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <nav class="woocommerce-pagination" style="text-align: center;">
                <ul class="pagination">
                    {{ $products->appends(request()->except(['page','_token']))->links() }}
                </ul>
            </nav>
        </div>
    </div>
@endsection
{{--@section('filter')--}}
{{--    <form action="" method="GET" id="filter_sort">--}}
{{--        <div class="pull-right">--}}
{{--            <div>--}}
{{--                @php--}}
{{--                    $queries = request()->except(['filter_sort','page']);--}}
{{--                @endphp--}}
{{--                @foreach ($queries as $key => $query)--}}
{{--                    <input type="hidden" name="{{ $key }}" value="{{ $query }}">--}}
{{--                @endforeach--}}
{{--                <select class="custom-select" name="filter_sort">--}}
{{--                    <option value="">{{ trans('front.filters.sort') }}</option>--}}
{{--                    <option value="price_asc" {{ ($filter_sort =='price_asc')?'selected':'' }}>{{ trans('front.filters.price_asc') }}</option>--}}
{{--                    <option value="price_desc" {{ ($filter_sort =='price_desc')?'selected':'' }}>{{ trans('front.filters.price_desc') }}</option>--}}
{{--                    <option value="sort_asc" {{ ($filter_sort =='sort_asc')?'selected':'' }}>{{ trans('front.filters.sort_asc') }}</option>--}}
{{--                    <option value="sort_desc" {{ ($filter_sort =='sort_desc')?'selected':'' }}>{{ trans('front.filters.sort_desc') }}</option>--}}
{{--                    <option value="id_asc" {{ ($filter_sort =='id_asc')?'selected':'' }}>{{ trans('front.filters.id_asc') }}</option>--}}
{{--                    <option value="id_desc" {{ ($filter_sort =='id_desc')?'selected':'' }}>{{ trans('front.filters.id_desc') }}</option>--}}
{{--                </select>--}}
{{--            </div>--}}
{{--        </div>--}}
{{--    </form>--}}
{{--@endsection--}}

@push('styles')
@endpush
@push('scripts')
    <script type="text/javascript">
        $('[name="filter_sort"]').change(function (event) {
            $('#filter_sort').submit();
        });
    </script>
@endpush
