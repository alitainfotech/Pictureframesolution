<?php

namespace Botble\Ecommerce\Repositories\Eloquent;

use Botble\Ecommerce\Repositories\Interfaces\ProductVariationItemInterface;
use Botble\Support\Repositories\Eloquent\RepositoriesAbstract;

class ProductVariationItemRepository extends RepositoriesAbstract implements ProductVariationItemInterface
{
    /**
     * {@inheritDoc}
     */
    public function getVariationsInfo(array $versionIds)
    {
        $data = $this->model
            ->join('ec_product_attributes', 'ec_product_attributes.id', '=', 'ec_product_variation_items.attribute_id')
            ->join('ec_product_attribute_sets', 'ec_product_attribute_sets.id', '=', 'ec_product_attributes.attribute_set_id')
            ->distinct()
            ->whereIn('ec_product_variation_items.variation_id', $versionIds)
            ->select([
                'ec_product_variation_items.variation_id',
                'ec_product_attributes.*',
                'ec_product_attribute_sets.title as attribute_set_title',
                'ec_product_attribute_sets.slug as attribute_set_slug',
            ]);

        return $this->applyBeforeExecuteQuery($data)->get();
    }

    /**
     * {@inheritDoc}
     */
    public function getVariationsInfoDetails(array $versionIds)
    {
        $data = $this->model
            ->join('ec_product_attributes', 'ec_product_attributes.id', '=', 'ec_product_variation_items.attribute_id')
            ->join('ec_product_attribute_sets', 'ec_product_attribute_sets.id', '=', 'ec_product_attributes.attribute_set_id')
            ->join('ec_product_variations', 'ec_product_variation_items.variation_id', 'ec_product_variations.id')
            ->join('ec_products', 'ec_products.id', 'ec_product_variations.product_id')
            ->distinct()
            ->whereIn('ec_product_variation_items.variation_id', $versionIds)
            ->whereIn('ec_product_attribute_sets.slug', ['color', 'frame-color', 'matting-color'])
            ->select([
                'ec_products.price',
                'ec_products.sale_price',
                'ec_products.images as product_images',
                'ec_product_variations.product_id',
                'ec_product_variation_items.variation_id',
                'ec_product_attributes.id',
                'ec_product_attributes.attribute_set_id',
                'ec_product_attributes.title as attribute_title',
                'ec_product_attributes.color as attribute_color',
                'ec_product_attributes.image as attribute_image',
                'ec_product_attributes.slug as ec_product_attribute_slug',
                'ec_product_attribute_sets.title as attribute_set_title',
                'ec_product_attribute_sets.slug as attribute_set_slug',
            ]);

        return $this->applyBeforeExecuteQuery($data)->get();
    }

    /**
     * {@inheritDoc}
     */
    public function getProductAttributes($productId)
    {
        $data = $this->model
            ->join('ec_product_attributes', 'ec_product_attributes.id', '=', 'ec_product_variation_items.attribute_id')
            ->join('ec_product_attribute_sets', 'ec_product_attribute_sets.id', '=', 'ec_product_attributes.attribute_set_id')
            ->join('ec_product_variations', 'ec_product_variations.id', '=', 'ec_product_variation_items.variation_id')
            ->distinct()
            ->where('ec_product_variations.product_id', $productId)
            ->select([
                'ec_product_attributes.*',
                'ec_product_attribute_sets.title as attribute_set_title',
                'ec_product_attribute_sets.slug as attribute_set_slug',
            ]);

        return $this->applyBeforeExecuteQuery($data)->get();
    }
}
