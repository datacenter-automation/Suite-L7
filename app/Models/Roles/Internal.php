<?php

namespace App\Models\Roles;

/**
 * App\Models\Roles\Internal
 *
 * @property int $id
 * @property string $uuid
 * @property string $name
 * @property string $email
 * @property string $password
 * @property string|null $stripe_id
 * @property string|null $card_brand
 * @property string|null $card_last_four
 * @property string|null $api_token
 * @property string|null $remember_token
 * @property \Illuminate\Support\Carbon|null $email_verified_at
 * @property \Illuminate\Support\Carbon|null $trial_ends_at
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property \Illuminate\Support\Carbon|null $deleted_at
 * @property-read \Illuminate\Notifications\DatabaseNotificationCollection|\Illuminate\Notifications\DatabaseNotification[] $notifications
 * @property-read int|null $notifications_count
 * @property-read \Illuminate\Database\Eloquent\Collection|\Infinitypaul\LaravelPasswordHistoryValidation\Models\PasswordHistory[] $passwordHistory
 * @property-read int|null $password_history_count
 * @property-read \Illuminate\Database\Eloquent\Collection|\Laravel\Cashier\Subscription[] $subscriptions
 * @property-read int|null $subscriptions_count
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Roles\Internal newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Roles\Internal newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Roles\Internal query()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Roles\Internal whereApiToken($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Roles\Internal whereCardBrand($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Roles\Internal whereCardLastFour($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Roles\Internal whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Roles\Internal whereDeletedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Roles\Internal whereEmail($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Roles\Internal whereEmailVerifiedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Roles\Internal whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Roles\Internal whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Roles\Internal wherePassword($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Roles\Internal whereRememberToken($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Roles\Internal whereStripeId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Roles\Internal whereTrialEndsAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Roles\Internal whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Roles\Internal whereUuid($value)
 * @mixin \Eloquent
 */
class Internal extends BaseUser
{
    //
}
