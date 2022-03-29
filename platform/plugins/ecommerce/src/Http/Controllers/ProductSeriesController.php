<?php

namespace Botble\Ecommerce\Http\Controllers;

use Botble\Base\Forms\FormBuilder;
use Botble\Base\Http\Controllers\BaseController;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Ecommerce\Forms\ProductSeriesForm;
use Botble\Ecommerce\Http\Requests\ProductSeriesRequest;
use Botble\Ecommerce\Repositories\Interfaces\ProductSeriesInterface;
use Botble\Ecommerce\Tables\ProductSeriesTable;
use Exception;
use Illuminate\Contracts\View\Factory;
use Illuminate\Http\Request;
use Illuminate\View\View;
use Throwable;

class ProductSeriesController extends BaseController
{
    /**
     * @var ProductSeriesInterface
     */
    protected $productSeriesRepository;

    /**
     * ProductCollectionController constructor.
     * @param ProductSeriesInterface $productCollectionRepository
     */
    public function __construct(ProductSeriesInterface $productSeriesRepository)
    {
        $this->productSeriesRepository = $productSeriesRepository;
    }

    /**
     * @param ProductSeriesTable $dataTable
     * @return Factory|View
     * @throws Throwable
     */
    public function index(ProductSeriesTable $dataTable)
    {
        page_title()->setTitle(trans('plugins/ecommerce::product-series.name'));

        return $dataTable->renderTable();
    }

    /**
     * @param FormBuilder $formBuilder
     * @return string
     */
    public function create(FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('plugins/ecommerce::product-series.create'));

        return $formBuilder->create(ProductSeriesForm::class)->renderForm();
    }

    /**
     * @param ProductSeriesRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function store(ProductSeriesRequest $request, BaseHttpResponse $response)
    {
        $productSeries = $this->productSeriesRepository->getModel();
        $productSeries->fill($request->input());

        $productSeries->slug = $this->productSeriesRepository->createSlug($request->get('slug'), 0);

        $productSeries = $this->productSeriesRepository->createOrUpdate($productCollection);

        return $response
            ->setPreviousUrl(route('product-series.index'))
            ->setNextUrl(route('product-series.edit', $productSeries->id))
            ->setMessage(trans('core/base::notices.create_success_message'));
    }

    /**
     * @param int $id
     * @param FormBuilder $formBuilder
     * @return string
     */
    public function edit($id, FormBuilder $formBuilder)
    {
        $productSeries = $this->productSeriesRepository->findOrFail($id);
        page_title()->setTitle(trans('plugins/ecommerce::product-series.edit') . ' "' . $productSeries->name . '"');

        return $formBuilder
            ->create(ProductSeriesForm::class, ['model' => $productSeries])
            ->remove('slug')
            ->renderForm();
    }

    /**
     * @param int $id
     * @param ProductSeriesRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function update($id, ProductSeriesRequest $request, BaseHttpResponse $response)
    {
        $productSeries = $this->productSeriesRepository->findOrFail($id);
        $productCollection->fill($request->input());

        $this->productSeriesRepository->createOrUpdate($productSeries);

        return $response
            ->setPreviousUrl(route('product-series.index'))
            ->setMessage(trans('core/base::notices.update_success_message'));
    }

    /**
     * @param int $id
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function destroy($id, BaseHttpResponse $response)
    {
        $productSeries = $this->productSeriesRepository->findOrFail($id);

        try {
            $this->productSeriesRepository->delete($productSeries);

            return $response->setMessage(trans('core/base::notices.delete_success_message'));
        } catch (Exception $exception) {
            return $response
                ->setError()
                ->setMessage($exception->getMessage());
        }
    }

    /**
     * @param Request $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     * @throws Exception
     */
    public function deletes(Request $request, BaseHttpResponse $response)
    {
        $ids = $request->input('ids');
        if (empty($ids)) {
            return $response
                ->setError()
                ->setMessage(trans('core/base::notices.no_select'));
        }

        foreach ($ids as $id) {
            $productSeries = $this->productSeriesRepository->findOrFail($id);
            $this->productSeriesRepository->delete($productSeries);
        }

        return $response->setMessage(trans('core/base::notices.delete_success_message'));
    }

    /**
     * @param BaseHttpResponse $response
     * @return mixed
     */
    public function getListForSelect(BaseHttpResponse $response)
    {
        $productSeries = $this->productSeriesRepository
            ->getModel()
            ->select(['id', 'name'])
            ->get()
            ->toArray();

        return $response->setData($productSeries);
    }
}
