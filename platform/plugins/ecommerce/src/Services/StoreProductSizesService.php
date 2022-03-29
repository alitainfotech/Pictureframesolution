<?php

namespace Botble\Ecommerce\Services;

use Botble\Ecommerce\Repositories\Eloquent\ProductSizeRepository;
use Botble\Ecommerce\Repositories\Interfaces\ProductSizeInterface;
use Exception;

class StoreProductSizesService
{
    /**
     * @var SizeRepository
     */
    protected $productSizeRepository;

    /**
     * StoresizesService constructor.
     * @param ProductSizeInterface $Size
     */
    public function __construct(ProductSizeInterface $productSize)
    {
        $this->productSizeRepository = $productSize;
    }

    /**
     * @param array $sizes
     * @param array $deletedSizes
     * @throws Exception
     */
    public function execute(array $sizes, array $deletedSizes)
    {
        if ($deletedSizes) {
            $this->productSizeRepository->deleteBy([
                ['id', 'IN', $deletedSizes],
            ]);
        }

        foreach ($sizes as $item) {
            if (!$item['name']) {
                continue;
            }

            $productSize = $this->productSizeRepository->findById($item['id']);
            if (!$productSize) {
                $this->productSizeRepository->create($item);
            } else {
                $productSize->fill($item);
                $this->productSizeRepository->createOrUpdate($productSize);
            }
        }
    }
}
