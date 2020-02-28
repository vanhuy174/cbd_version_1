@extends($templatePath.'.shop_layout')

@section('center')

    <section class="bliccaThemes-waypoint" data-animate-down="on-sticky" data-animate-up="off-sticky">
        <div class="caption-container ">
            <div>
                <div class="caption-container " style="background: url({{asset($templateFile.'/images/img-cbd/title.jpg')}}) no-repeat;">
                    <h1 style="">{{ $title }}</h1>
                </div>
            </div>
        </div>
        <div class="bliccaThemes-shop bliccaThemes-shop-grid4 woocommerce">
            <div class="container container-width-85">
                <div class="row">
                    <div class="col-md-12">
                        <div id="product-229"
                             class="post-229 product type-product status-publish has-post-thumbnail product_cat-clothing product_cat-hoodies first instock shipping-taxable purchasable product-type-simple">
                            <div class="row">
                                <div class="woocommerce-product-gallery woocommerce-product-gallery--with-images woocommerce-product-gallery--columns-4 images col-sm-6"
                                     data-columns="4" style="opacity: 1; transition: opacity .25s ease-in-out;">
                                    <div class="demo">
                                        <ul id="lightSlider">
                                            @if ($product->images->count())
                                                @foreach ($product->images as $key=>$image)
                                                    <li data-thumb="{{ asset($image->getImage()) }}">
                                                        <img src="{{ asset($image->getImage()) }}"/>
                                                    </li>
                                                @endforeach
                                            @endif
                                        </ul>
                                    </div>
                                </div>
                                <div class="summary entry-summary col-sm-6">
                                    <h1 class="product_title entry-title ">{{$title}}</h1>
                                    <div class="woocommerce-product-details__short-description">
                                        <p class="custom-text-cart">{{$product->description}}</p>
                                    </div>
                                    <div>
                                        @if(!is_null($product->price))
                                            <p class="custom-price-cart">Giá: <span class="">
                                                    <span class="woocommerce-Price-amount amount">
                                            <span class="woocommerce-Price-currencySymbol">{{$product->cost}}VND {{$product->price}}VND</span>
                                                    </span>
                                                </span>
                                            </p>
                                        @else
                                            <p class="custom-price-cart">Giá: <span class="">
                                                    <span class="woocommerce-Price-amount amount">
                                            <span class="woocommerce-Price-currencySymbol">{{$product->cost}}</span>
                                                    </span>
                                                </span>
                                            </p>
                                        @endif
                                    </div>
                                    <div>
                                        <p class="custom-price-cart">Tiết kiệm: <span class="">
                                                    <span class="woocommerce-Price-amount amount">
                                            <span class="woocommerce-Price-currencySymbol">25% </span>
                                                    </span>
                                                </span> (370.000đ)
                                        </p>
                                    </div>
                                    <div>
                                        <p class="custom-price-cart">Giá thị trường: 1.500.000đ</p>
                                    </div>
                                    <br>
                                    <div>
                                        <p class="custom-text-color-black">- Lorem ipsum dolor sit amet, consectetur
                                            adipisicing elit.</p>
                                        <p class="custom-text-color-black">- Lorem ipsum dolor sit amet, consectetur
                                            adipisicing elit.</p>
                                        <p class="custom-text-color-black">- Lorem ipsum dolor sit amet, consectetur
                                            adipisicing elit.</p>
                                    </div>
                                    <div class="row">
                                        <form id="buy_block" action="{{ route('cart.add') }}" method="post">
                                            {{ csrf_field() }}
                                            <input type="hidden" name="product_id" id="product-detail-id" value="{{ $product->id }}"/>
                                            <div class="quantity">
                                                <input class="minus" type="button" value="-">
                                                <input type="number" step="1" min="1" name="qty"
                                                       value="1" title="Qty"
                                                       class="input-text qty text"
                                                       size="4" readonly />
                                                <input class="plus" type="button" value="+">
                                            </div>
                                            <div>
                                                <button style="margin-left: 5px; padding: 5px 15px 5px 15px; font-size: 20px;"
                                                        data-quantity="1"
                                                        class="btn btn-success product_type_simple add_to_cart_button btn btn-default add-to-cart"
                                                        data-product_id="233" data-product_sku=""
                                                        aria-label="Add &ldquo;Apple Pack&rdquo; to your cart"
                                                        rel="nofollow"
                                                        onClick="addToCartAjax('{{ $product->id }}','default')"
                                                >Add to cart
                                                </button>
                                            </div>
                                        </form>
                                    </div>

                                </div>
                            </div>

                            <div class="woocommerce-tabs">
                                <div class="padding-t-b-3">
                                    <h3 class="custom-title-product-detail">MÔ TẢ SẢN PHẨM</h3>
                                    <p class="border-bottom-title"></p>
                                </div>
                                <div class="recipe-example">
                                    <div>
                                        <iframe width="100%" height="315"
                                                src="https://www.youtube.com/embed/fTsr6o6i53I" frameborder="0"
                                                allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                                                allowfullscreen></iframe>
                                    </div>
                                </div>

                                <div class="bt-product-information " id="description">
                                    <h3></h3>
                                    <p class="custom-text-cart">Pellentesque habitant morbi tristique senectus et netus
                                        et malesuada fames ac
                                        turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor
                                        sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies
                                        mi vitae est. Mauris placerat eleifend leo.</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <h3 class="custom-title-product-detail">NHẬN XÉT KHÁCH HÀNG</h3>
                                    <p class="border-bottom-title"></p>
                                    <div>
                                        <p class="custom-text-cart">
                                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad aliquid,
                                            dolorum
                                            est eveniet expedita fuga fugiat laborum officia provident quod rerum sequi
                                            similique tenetur velit voluptas! Deleniti odio officia quae.
                                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. At autem error
                                            nihil
                                            odit officia optio quas, quisquam sapiente totam voluptas. Accusantium
                                            aperiam
                                            autem ducimus fugiat ipsa quas rem sapiente vel.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="bt-shop-related">
                                <div class="row">
                                    <div class="col-md-12">
                                        <section class="related products">
                                            <div class="padding-t-b-3" style="text-align: center;">
                                                <h3 class="custom-title-product-detail">SẢN PHẨM TƯƠNG TỰ</h3>
                                                <p class="border-bottom-title margin-auto"></p>
                                            </div>
                                            <ul class="products columns-4">
                                                @for($i=0; $i<4; $i++)
                                                    <li class="custom-product-style post-240 product type-product status-publish has-post-thumbnail product_cat-clothing product_cat-t-shirts first instock sale shipping-taxable purchasable product-type-simple" style="width: 21.05%;">

                                                        <a href="#"
                                                           class="woocommerce-LoopProduct-link woocommerce-loop-product__link">

                                                            <div class="bliccathemes-shop-thumb">

                                                                <span class="onsale">Sale!</span>
                                                                <img width="300" height="300"
                                                                     src="//bliccathemes.com/themes/farmvilla/wp-content/uploads/2016/05/yellowapple-300x300.jpg"
                                                                     class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail wp-post-image"
                                                                     alt=""
                                                                     srcset="//bliccathemes.com/themes/farmvilla/wp-content/uploads/2016/05/yellowapple-300x300.jpg 300w, //bliccathemes.com/themes/farmvilla/wp-content/uploads/2016/05/yellowapple-150x150.jpg 150w, //bliccathemes.com/themes/farmvilla/wp-content/uploads/2016/05/yellowapple-100x100.jpg 100w"
                                                                     sizes="(max-width: 300px) 100vw, 300px"/></div>
                                                            <a href="#">
                                                                <h2>Yellow Apple</h2>
                                                            </a>
                                                            <div style="width: 100%;height: 45px; margin: auto;">
                                                                <p class="custom-text-cart">
                                                                    12000đ
                                                                </p>
                                                            </div>
                                                            <br>
                                                        </a>
                                                        <div style="justify-content: center;">
                                                            <button
                                                                    data-quantity="1"
                                                                    class="button product_type_simple add_to_cart_button btn btn-default add-to-cart"
                                                                    data-product_id="233" data-product_sku=""
                                                                    aria-label="Add &ldquo;Apple Pack&rdquo; to your cart"
                                                                    rel="nofollow"
                                                                    onClick="addToCartAjax('{{ $product->id }}','default')"
                                                            >Add to cart
                                                            </button>
                                                        </div>
                                                    </li>
                                                @endfor
                                            </ul>
                                        </section>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </section>

@endsection
