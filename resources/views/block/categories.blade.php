@php
    $modelCategory = (new \App\Models\ShopCategory);
    $categories = $modelCategory->getCategoriesAll($onlyActive = true);
    $categoriesTop = $modelCategory->getCategoriesTop();
@endphp
@if ($categoriesTop->count())
    <h2 style="margin-top: 108px;border-bottom: 1px solid;">{{ trans('front.categories') }}</h2>
    <br>
    <div class="panel-group category-products" id="accordian">
        <div class="panel panel-default">
            <div class="panel-heading">
                <a href="{{ route('product.all') }}"><h4 class="panel-title"><a
                                href="{{ route('product.all') }}">{{ trans('front.all_product') }}</a></h4></a>
            </div>
        </div>
        @foreach ($categoriesTop as $key =>  $category)
            @if (!empty($categories[$category->id]))
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordian" href="#{{ $key }}">
                                <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                            </a>
                            <a href="{{ $category->getUrl() }}">  {{ $category->name }}</a>
                        </h4>
                    </div>
                    <div id="{{ $key }}" class="panel-collapse collapse">
                        <div class="panel-body">
                            <ul>
                                @foreach ($categories[$category->id] as $cateChild)
                                    <li>
                                        - <a href="{{ $cateChild->getUrl() }}">{{ $cateChild->name }}</a>
                                        <ul>
                                            @if (!empty($categories[$cateChild->id]))
                                                @foreach ($categories[$cateChild->id] as $cateChild2)
                                                    <li>
                                                        --
                                                        <a href="{{ $cateChild2->getUrl() }}">{{ $cateChild2->name }}</a>
                                                    </li>
                                                @endforeach
                                            @endif
                                        </ul>
                                    </li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div>
            @else
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <a href="{{ $category->getUrl() }}"><h4 class="panel-title"><a
                                        href="{{ $category->getUrl() }}">{{ $category->name }}</a></h4></a>
                    </div>
                </div>
            @endif
        @endforeach
    </div>
@endif
