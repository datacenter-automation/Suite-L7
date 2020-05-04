<?php

namespace App\Models;

use Carbon\Carbon;
use Symfony\Component\HttpFoundation\Response;

/**
 * App\Models\ApiMapper.
 *
 * @property int $id
 * @property string $uuid
 * @property int $api_code
 * @property int $status_code
 * @property string|null $reason
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ApiMapper newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ApiMapper newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ApiMapper query()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ApiMapper whereApiCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ApiMapper whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ApiMapper whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ApiMapper whereReason($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ApiMapper whereStatusCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ApiMapper whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ApiMapper whereUuid($value)
 * @mixin \Eloquent
 */
class ApiMapper extends BaseModel
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'uuid',
        'api_code',
        'status_code',
        'reason',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array
     */
    protected $casts = [
        'uuid'        => 'string',
        'api_code'    => 'integer',
        'status_code' => 'integer',
    ];

    /**
     * The attributes that should be mutated to dates.
     *
     * @var array
     */
    protected $dates = [
        'created_at',
        'updated_at',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array
     */
    protected $hidden = [
        'id',
        'created_at',
        'updated_at',
    ];

    /**
     * The number of models to return for pagination.
     *
     * @var int
     */
    protected $perPage = 10;

    /**
     * @param $value
     *
     * @return \DateTimeImmutable
     * @throws \Exception
     */
    protected function getCreatedAtAttribute($value)
    {
        return (new Carbon($value))->toDateTimeImmutable();
    }

    ///**
    // * @param $value
    // *
    // * @return \DateTimeImmutable
    // * @throws \Exception
    // */
    //protected function getUpdatedAtAttribute($value)
    //{
    //    return (new Carbon($value))->toDateTimeImmutable();
    //}

    /**
     * Convert the model instance to an array.
     *
     * @return array
     */
    public function toArray()
    {
        return [
            'status' => Response::$statusTexts[$this->status_code],
            'code'   => $this->status_code,
            'error'  => [
                'uuid'    => $this->uuid,
                'code'    => $this->api_code,
                'message' => $this->reason,
            ],
        ];
    }

    /**
     * Convert the model to its string representation.
     *
     * @return string
     */
    public function toString()
    {
        return $this->__toString();
    }

    /**
     * Convert the model to its string representation.
     *
     * @return string
     */
    public function __toString()
    {
        $http_response_text = Response::$statusTexts[$this->status_code];

        $string_format = "['status' => '%s', 'code' => %d, 'error' => ['uuid' => '%s', 'code' => %d, 'message' => '%s']]";

        return sprintf($string_format, $http_response_text, $this->status_code, $this->uuid, $this->api_code, $this->reason);
    }
}
