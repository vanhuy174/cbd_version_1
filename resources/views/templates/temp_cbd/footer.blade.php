<!--Footer-->

<!--Module top footer -->
@isset ($blocksContent['footer'])
    @foreach ( $blocksContent['footer']  as $layout)
        @php
            $arrPage = explode(',', $layout->page)
        @endphp
        @if ($layout->page == '*' ||  (isset($layout_page) && in_array($layout_page, $arrPage)))
            @if ($layout->type =='html')
                {!! $layout->text !!}
            @elseif($layout->type =='view')
                @if (view()->exists('blockView.'.$layout->text))
                    @include('blockView.'.$layout->text)
                @endif
            @elseif($layout->type =='module')
                {!! sc_block_render($layout->text) !!}
            @endif
        @endif
    @endforeach
@endisset
<!--//Module top footer -->

<footer class="footer_bliccaThemes">
    <div class="">
        <div class="row">

            <div class="col-md-12">
                <div data-vc-full-width="true" data-vc-full-width-init="false" data-vc-stretch-content="true"
                     class="vc_row wpb_row vc_row-fluid vc_row-no-padding" style="margin-bottom: -35px;">
                    <div class="wpb_column vc_column_container vc_col-sm-12">
                        <div class="vc_column-inner ">
                            <div class="wpb_wrapper">
                                <div class="wpb_single_image  vc_align_left">
                                    <figure>
                                        <div class=" vc_box_border_grey">
                                            <img width="100%"
                                                 height="153"
                                                 src="{{ asset($templateFile.'/images/img-cbd/footer.png')}}"
                                                 class="vc_single_image-img attachment-full"
                                                 alt=""
                                                 srcset="{{ asset($templateFile.'/images/img-cbd/footer.png')}} 1920w,
                                                        {{ asset($templateFile.'/images/img-cbd/footer.png')}} 300w,
                                                        {{ asset($templateFile.'/images/img-cbd/footer.png')}} 768w,
                                                        {{ asset($templateFile.'/images/img-cbd/footer.png')}} 1024w,
                                                        {{ asset($templateFile.'/images/img-cbd/footer.png')}} 600w"
                                                 sizes="(max-width: 1920px) 100vw, 1920px"/>
                                        </div>
                                    </figure>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="vc_row-full-width vc_clearfix"></div>
                <div data-vc-full-width="true" data-vc-full-width-init="false"
                     class="vc_row wpb_row vc_row-fluid vc_custom_1462119377274 vc_row-has-fill">
                    <div class="row">
                        <div class="col-sm-6 col-md-6">
                            <div class="container" style="width: 70%; background-color: white; border-radius: 20px;">
                                <div class="padding-t-b-3">
                                    <h2><b>{{ trans('front.footer-table-title') }}</b></h2>
                                </div>
                                <form>
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">*{{ trans('front.footer-name') }}</label>
                                        <input type="text" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputPassword1">*{{ trans('front.footer-phone') }}</label>
                                        <input type="text" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputPassword1">*Email</label>
                                        <input type="email" class="form-control">
                                    </div>
                                    <div class="padding-t-b-3"  style="text-align: center">
                                        <span>
                                            <button type="submit" class="btn" style="background-color: #69b845; color: white; width: 40%"><b>{{ trans('front.footer-register') }}</b></button>
                                        </span>
                                    </div>
                                    <p></p>
                                </form>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-6">
                            <div class="container" style="width: 70%;">
                                <div>
                                    <img src="{{ asset($templateFile.'/images/img-cbd/logo_footer.png')}}">
                                </div>
                                <div class="padding-t-b-3">
                                    <p style="color: white; line-height: 50px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad atque autem blanditiis eos eum facilis fuga in ipsa labore magnam necessitatibus nemo neque quibusdam rem tempore, tenetur, vel! A, veritatis?</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="vc_row-full-width vc_clearfix"></div>
            </div>
        </div>
    </div>

</footer>
