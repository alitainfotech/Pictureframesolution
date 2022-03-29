<?php

namespace Botble\Ecommerce\Enums;

use Botble\Base\Supports\Enum;
use Html;

/**
 * @method static ProductTypeOptionEnum REGULAR()
 * @method static ProductTypeOptionEnum FRAMEBUILDER()
 */
class ProductTypeOptionEnum extends Enum
{
    public const REGULAR = 'regular';
    public const FRAMEBUILDER = 'framebuilder';

    /**
     * @var string
     */
    public static $langPath = 'plugins/ecommerce::products.types';

    /**
     * @return string
     */
    public function toHtml()
    {
        switch ($this->value) {
            case self::REGULAR:
                return Html::tag('span', self::REGULAR()->label(), ['class' => 'label-info status-label'])
                    ->toHtml();
            case self::FRAMEBUILDER:
                return Html::tag('span', self::FRAMEBUILDER()->label(), ['class' => 'label-info status-label'])
                    ->toHtml();
            default:
                return parent::toHtml();
        }
    }
}
