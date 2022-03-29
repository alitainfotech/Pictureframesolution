<?php

namespace Botble\Ecommerce\Forms;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Forms\FormAbstract;
use Botble\Ecommerce\Http\Requests\ProductAttributeSetsRequest;
use Botble\Ecommerce\Models\ProductAttribute;

class ProductFpsAttributeSetForm extends FormAbstract
{

    /**
     * {@inheritDoc}
     */
    public function buildForm()
    {

        $attributes = [];

        if ($this->getModel()) {
            $attributes = $this->getModel()->attributes;
        }

        $this
            ->setupModel(new ProductAttribute)
            ->setValidatorClass(ProductAttributeSetsRequest::class)
            ->setFormOption('class', 'update-attribute-set-form')
            ->withCustomFields()
            ->add('type', 'html', [
                'html' => '<input type="hidden" name="type" value="framebuilder" />',
            ])
            ->add('display_layout', 'html', [
                'html' => '<input type="hidden" name="display_layout" value="NULL" />',
            ])
            ->add('is_searchable', 'html', [
                'html' => '<input type="hidden" name="is_searchable" value="0" />',
            ])
            ->add('is_comparable', 'html', [
                'html' => '<input type="hidden" name="is_comparable" value="0" />',
            ])
            ->add('is_use_in_product_listing', 'html', [
                'html' => '<input type="hidden" name="is_comparable" value="0" />',
            ])
            ->add('title', 'text', [
                'label'      => trans('core/base::forms.title'),
                'label_attr' => ['class' => 'control-label required'],
                'attr'       => [
                    'data-counter' => 120,
                ],
            ])
            ->add('slug', 'text', [
                'label'      => trans('core/base::forms.slug'),
                'label_attr' => ['class' => 'control-label required'],
                'attr'       => [
                    'data-counter' => 120,
                ],
            ])
            ->add('status', 'customSelect', [
                'label'      => trans('core/base::tables.status'),
                'label_attr' => ['class' => 'control-label required'],
                'choices'    => BaseStatusEnum::labels(),
            ])
            ->add('order', 'number', [
                'label'         => trans('core/base::forms.order'),
                'label_attr'    => ['class' => 'control-label'],
                'attr'          => [
                    'placeholder' => trans('core/base::forms.order_by_placeholder'),
                ],
                'default_value' => 0,
            ])
            ->setBreakFieldPoint('status')
            ->addMetaBoxes([
                'attributes_list' => [
                    'title'   => trans('plugins/ecommerce::product-attribute-sets.attributes_list'),
                    'content' => view('plugins/ecommerce::product-attributes.sets.list',
                        compact('attributes'))->render(),
                ],
            ]);
    }
}
