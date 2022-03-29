<?php

namespace Botble\Ecommerce\Models;

use Botble\Base\Models\BaseModel;

class ProductSize extends BaseModel
{
    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'ec_product_sizes';

    /**
     * @var array
     */
    protected $fillable = [
        'name',
        'number',
    ];

}
