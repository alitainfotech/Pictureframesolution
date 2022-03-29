<?php

Route::group(['namespace' => 'Theme\Pfs\Http\Controllers', 'middleware' => ['web', 'core']], function () {
    Route::group(apply_filters(BASE_FILTER_GROUP_PUBLIC_ROUTE, []), function () {

        Route::get('ajax/products', 'PfsController@ajaxGetProducts')
            ->name('public.ajax.products');

        Route::get('ajax/featured-product-categories', 'PfsController@getFeaturedProductCategories')
            ->name('public.ajax.featured-product-categories');

        Route::get('ajax/trending-products', 'PfsController@ajaxGetTrendingProducts')
            ->name('public.ajax.trending-products');

        Route::get('ajax/featured-brands', 'PfsController@ajaxGetFeaturedBrands')
            ->name('public.ajax.featured-brands');

        Route::get('ajax/featured-products', 'PfsController@ajaxGetFeaturedProducts')
            ->name('public.ajax.featured-products');

        Route::get('ajax/top-rated-products', 'PfsController@ajaxGetTopRatedProducts')
            ->name('public.ajax.top-rated-products');

        Route::get('ajax/on-sale-products', 'PfsController@ajaxGetOnSaleProducts')
            ->name('public.ajax.on-sale-products');

        Route::get('ajax/cart', 'PfsController@ajaxCart')
            ->name('public.ajax.cart');

        Route::get('ajax/quick-view/{id}', 'PfsController@getQuickView')
            ->name('public.ajax.quick-view');

        Route::get('ajax/featured-posts', 'PfsController@ajaxGetFeaturedPosts')
            ->name('public.ajax.featured-posts');

        Route::get('ajax/testimonials', 'PfsController@ajaxGetTestimonials')
            ->name('public.ajax.testimonials');

        Route::get('ajax/product-reviews/{id}', 'PfsController@ajaxGetProductReviews')
            ->name('public.ajax.product-reviews');

        Route::get('ajax/get-flash-sales', 'PfsController@ajaxGetFlashSales')
            ->name('public.ajax.get-flash-sales');
    });

});

Theme::routes();

Route::group(['namespace' => 'Theme\Pfs\Http\Controllers', 'middleware' => ['web', 'core']], function () {
    Route::group(apply_filters(BASE_FILTER_GROUP_PUBLIC_ROUTE, []), function () {

        Route::get('/', 'PfsController@getIndex')
            ->name('public.index');

        Route::get('sitemap.xml', 'PfsController@getSiteMap')
            ->name('public.sitemap');

        Route::get('{slug?}' . config('core.base.general.public_single_ending_url'), 'PfsController@getView')
            ->name('public.single');

    });

});
