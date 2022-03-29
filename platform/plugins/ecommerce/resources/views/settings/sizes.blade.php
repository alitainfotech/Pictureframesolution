@extends('core/base::layouts.master')
@section('content')
    {!! Form::open(['url' => route('ecommerce.sizes'), 'class' => 'main-setting-form']) !!}
        <div class="max-width-1200">

            <h2>{{ trans('plugins/ecommerce::framebuilder.sizes') }}</h2>
            <div class="flexbox-annotated-section">
                <div class="flexbox-annotated-section-annotation">
                    <div class="annotated-section-title pd-all-20">
                    </div>
                </div>

                <div class="flexbox-annotated-section-content">
                    <div class="wrapper-content pd-all-20">

                    <textarea name="product_sizes"
                              id="product_sizes"
                              class="hidden">{!! json_encode($sizes) !!}</textarea>
                        <textarea name="deleted_product_sizes"
                                  id="deleted_product_sizes"
                                  class="hidden"></textarea>
                        <div class="swatches-container">
                            <div class="header clearfix">
                                <div class="swatch-item">
                                    {{ trans('plugins/ecommerce::framebuilder.size') }}
                                </div>
                                <div class="swatch-item">
                                    {{ trans('plugins/ecommerce::framebuilder.number') }}
                                </div>
                                <div class="remove-item">{{ trans('plugins/ecommerce::framebuilder.remove') }}</div>
                            </div>
                            <ul class="swatches-list">

                            </ul>
                            <a href="#" class="js-add-new-attribute">
                                {{ trans('plugins/ecommerce::framebuilder.new_size') }}
                            </a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="flexbox-annotated-section" style="border: none">
                <div class="flexbox-annotated-section-annotation">
                    &nbsp;
                </div>
                <div class="flexbox-annotated-section-content">
                    <button class="btn btn-info" type="submit">{{ trans('plugins/ecommerce::currency.save_settings') }}</button>
                </div>
            </div>
        </div>
    {!! Form::close() !!}
@endsection

@push('footer')
    <script id="size_template" type="text/x-custom-template">
        <li data-id="__id__" class="clearfix">
            <div class="swatch-item" data-type="name">
                <input type="text" class="form-control" value="__name__">
            </div>
            <div class="swatch-item" data-type="number">
                <input type="text" class="form-control" value="__number__">
            </div>
            <div class="remove-item"><a href="#" class="font-red"><i class="fa fa-trash"></i></a></div>
        </li>
    </script>
@endpush
