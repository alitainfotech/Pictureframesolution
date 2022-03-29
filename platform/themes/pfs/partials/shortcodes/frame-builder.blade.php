<div class="section small_pt pb-0">
    <div class="container">
        @if (clean($title))
            <div class="heading_tab_header">
                <div class="heading_s2">
                    <h4>{!! clean($title) !!}</h4>
                </div>
            </div>
        @endif
    </div>

    <frame-builder-component title="{!! clean($title) !!}" url="{{ route('ajax.products.framebuilder') }}"></frame-builder-component>

</div>
