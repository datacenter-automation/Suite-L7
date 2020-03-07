<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Roles\User;
use Auth;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\Facades\Response;
use League\Fractal\Manager;
use League\Fractal\Pagination\IlluminatePaginatorAdapter;
use League\Fractal\Resource\Collection;
use League\Fractal\Resource\Item;
use Symfony\Component\HttpFoundation\Response as HttpResponse;

/**
 * Class BaseApiController.
 */
abstract class BaseApiController extends Controller
{
    protected $_statusCode;

    /**
     * @var \League\Fractal\Manager
     */
    protected $_fractal;

    /**
     * BaseApiController constructor.
     *
     * @param \League\Fractal\Manager $fractal
     */
    public function __construct(Manager $fractal)
    {
        $this->_fractal = $fractal;
    }

    /**
     * Display a 204 status code.
     *
     * @param string $message
     *
     * @return mixed
     */
    public function respondEmptyData($message = 'Empty Data')
    {
        return $this->setStatusCode(HttpResponse::HTTP_NO_CONTENT)->respondWithError($message);
    }

    /**
     * Build the meta object and respond.
     * Set the code to a generic status code.
     *
     * @param $message
     *
     * @return mixed
     */
    public function respondWithError($message)
    {
        return $this->respond([
            'meta'    => $this->getMetaData(),
            'error'   => ['message' => $message, 'code' => HttpResponse::HTTP_BAD_REQUEST],
            'success' => false,

        ]);
    }

    /**
     * Build the meta object and respond.
     *
     * @param       $data
     * @param array $headers
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function respond($data, $headers = [])
    {
        $data['meta'] = $this->getMetaData();

        return Response::json($data, $this->getStatusCode(), $headers);
    }

    /**
     * Populate the metadata section of the response payload.
     * This includes the auth_token to be used in the next request.
     *
     * @return mixed
     */
    protected function getMetaData()
    {

        // Send the token back in the next request.
        // Previous coded as: Auth::generateTokenById($userId).
        $userId = Auth::id();
        $token = User::find($userId)->auth_token;

        $data['auth_token'] = $token;

        return $data;
    }

    /**
     * Get the status code.
     *
     * @return mixed
     */
    public function getStatusCode()
    {
        return $this->_statusCode;
    }

    /**
     * Set the status code.
     *
     * @param $statusCode
     *
     * @return $this
     */
    public function setStatusCode($statusCode)
    {
        $this->_statusCode = $statusCode;

        return $this;
    }

    /**
     * Display a 404 status code.
     *
     * @param string $message
     *
     * @return mixed
     */
    public function respondNotFound($message = 'Not Found')
    {
        return $this->setStatusCode(HttpResponse::HTTP_NOT_FOUND)->respondWithError($message);
    }

    /**
     * Display a 500 status code.
     *
     * @param string $message
     *
     * @return mixed
     */
    public function respondInternalError($message = 'Not Found')
    {
        return $this->setStatusCode(HttpResponse::HTTP_INTERNAL_SERVER_ERROR)->respondWithError($message);
    }

    /**
     * Display a 401 status code.
     *
     * @param string $message
     *
     * @return mixed
     */
    public function respondAuthenticationError($message = 'Forbidden')
    {
        return $this->setStatusCode(HttpResponse::HTTP_UNAUTHORIZED)->respondWithError($message);
    }

    /**
     * Build the meta object and respond.
     *
     * @param $item
     * @param $callback
     *
     * @return mixed
     */
    protected function respondWithItem($item, $callback)
    {
        $resource = new Item($item, $callback);
        $rootScope = $this->_fractal->createData($resource);
        $rootScope['meta'] = $this->getMetaData();

        return $this->respondWithArray($rootScope->toArray());
    }

    /**
     * Response to array.
     *
     * @param array $array
     * @param array $headers
     *
     * @return \Illuminate\Http\JsonResponse
     */
    protected function respondWithArray(array $array, array $headers = [])
    {
        return Response::json($array, HttpResponse::HTTP_OK, ['content-type' => 'application/json']);
    }

    /**
     * Build the meta object and respond.
     *
     * @param      $collection
     * @param bool $totalItems
     * @param      $callback
     *
     * @return \Illuminate\Http\JsonResponse
     */
    protected function respondWithKeyPairCollection($collection, $totalItems, $callback)
    {
        $resource = new Collection($collection, $callback);
        if ($collection instanceof Paginator) {
            $resource->setPaginator(new IlluminatePaginatorAdapter($collection));
        }
        $rootScope = $this->_fractal->createData($resource);
        $rootScopeArray = $rootScope->toArray();
        $countTotal = 0;

        foreach ($rootScopeArray['data'] as $index => $subArr) {
            $rootScopePairArray['data'][$subArr['key']] = $subArr['value'];
            $countTotal++;
        }
        $rootScopePairArray['total'] = $countTotal;
        $rootScopePairArray['meta'] = $this->getMetaData();

        return $this->respondWithArray($rootScopePairArray);
    }

    /**
     * Build the meta object and respond.
     *
     * @param      $collection
     * @param bool $totalItems
     * @param      $callback
     *
     * @return \Illuminate\Http\JsonResponse
     */
    protected function respondWithCollection($collection, $totalItems, $callback)
    {
        $resource = new Collection($collection, $callback);
        if ($collection instanceof Paginator) {
            $resource->setPaginator(new IlluminatePaginatorAdapter($collection));
        }
        $rootScope = $this->_fractal->createData($resource);
        $rootScopeArray = $rootScope->toArray();
        $rootScopeArray['total'] = $totalItems;
        $rootScopeArray['meta'] = $this->getMetaData();

        return $this->respondWithArray($rootScopeArray);
    }

    /**
     * Build the meta object and respond.
     *
     * @param array $array
     * @param array $headers
     *
     * @return \Illuminate\Http\JsonResponse
     */
    protected function respondWithDefinedArray(array $array, array $headers = [])
    {
        $array['meta'] = $this->getMetaData();

        return $this->respondWithArray($array);
    }
}
