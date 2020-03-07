<?php

namespace App\Models\Roles;

use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Infinitypaul\LaravelPasswordHistoryValidation\Traits\PasswordHistoryTrait;
use Laravel\Cashier\Billable;
use Laravel\Scout\Searchable;

/**
 * App\Models\Roles\BaseUser
 *
 * @property-read \Illuminate\Notifications\DatabaseNotificationCollection|\Illuminate\Notifications\DatabaseNotification[] $notifications
 * @property-read int|null $notifications_count
 * @property-read \Illuminate\Database\Eloquent\Collection|\Infinitypaul\LaravelPasswordHistoryValidation\Models\PasswordHistory[] $passwordHistory
 * @property-read int|null $password_history_count
 * @property-read \Illuminate\Database\Eloquent\Collection|\Laravel\Cashier\Subscription[] $subscriptions
 * @property-read int|null $subscriptions_count
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Roles\BaseUser newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Roles\BaseUser newQuery()
 * @method static \Illuminate\Database\Query\Builder|\App\Models\Roles\BaseUser onlyTrashed()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Roles\BaseUser query()
 * @method static \Illuminate\Database\Query\Builder|\App\Models\Roles\BaseUser withTrashed()
 * @method static \Illuminate\Database\Query\Builder|\App\Models\Roles\BaseUser withoutTrashed()
 * @mixin \Eloquent
 */
class BaseUser extends Authenticatable
{
    use Billable, Notifiable, PasswordHistoryTrait, Searchable, SoftDeletes;

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'api_token',
        'password',
        'remember_token',
    ];

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'api_token',
        'blocked_at',
        'card_brand',
        'card_last_four',
        'created_at',
        'email',
        'email_verified_at',
        'id',
        'name',
        'password',
        'remember_token',
        'stripe_id',
        'trial_ends_at',
        'updated_at',
        'uuid',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'blocked_at'        => 'datetime',
        'created_at'        => 'datetime',
        'email_verified_at' => 'datetime',
        'trial_ends_at'     => 'datetime',
        'updated_at'        => 'datetime',
    ];

    /**
     * Get the index name for the model.
     *
     * @return string
     */
    public function searchableAs()
    {
        return $this->getTable().'_index';
    }

    /**
     * Get the indexable data array for the model.
     *
     * @return array
     */
    public function toSearchableArray()
    {
        return $this->toArray();
    }
}
