<?php

namespace Botble\Ecommerce\Http\Requests;

use Botble\Support\Http\Requests\Request;

class ProductSeriesRequest extends Request
{

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        switch (request()->route()->getName()) {
            case 'product-series.create':
                return [
                    'name' => 'required',
                    'slug' => 'required|unique:ec_product_series',
                ];
            default:
                return [
                    'name' => 'required',
                ];
        }
    }
}
