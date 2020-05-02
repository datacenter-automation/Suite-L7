<?php

namespace App\Models\Roles;

use App\Ticket;

/**
 * App\Models\Roles\User.
 *
 * @property int $id
 * @property string $uuid
 * @property string $name
 * @property string $email
 * @property string $password
 * @property string|null $api_token
 * @property string|null $remember_token
 * @property \Illuminate\Support\Carbon|null $email_verified_at
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string|null $stripe_id
 * @property string|null $card_brand
 * @property string|null $card_last_four
 * @property \Illuminate\Support\Carbon|null $trial_ends_at
 * @property \Illuminate\Support\Carbon|null $blocked_at
 * @property \Illuminate\Support\Carbon|null $deleted_at
 * @property-read \Illuminate\Notifications\DatabaseNotificationCollection|\Illuminate\Notifications\DatabaseNotification[] $notifications
 * @property-read int|null $notifications_count
 * @property-read \Illuminate\Database\Eloquent\Collection|\Infinitypaul\LaravelPasswordHistoryValidation\Models\PasswordHistory[] $passwordHistory
 * @property-read int|null $password_history_count
 * @property-read \Illuminate\Database\Eloquent\Collection|\Laravel\Cashier\Subscription[] $subscriptions
 * @property-read int|null $subscriptions_count
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Ticket[] $tickets
 * @property-read int|null $tickets_count
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Roles\User newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Roles\User newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Roles\User query()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Roles\User whereApiToken($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Roles\User whereBlockedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Roles\User whereCardBrand($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Roles\User whereCardLastFour($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Roles\User whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Roles\User whereDeletedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Roles\User whereEmail($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Roles\User whereEmailVerifiedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Roles\User whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Roles\User whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Roles\User wherePassword($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Roles\User whereRememberToken($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Roles\User whereStripeId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Roles\User whereTrialEndsAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Roles\User whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Roles\User whereUuid($value)
 * @mixin \Eloquent
 */
class User extends BaseUser
{
    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function tickets()
    {
        return $this->hasMany(Ticket::class);
    }
}
