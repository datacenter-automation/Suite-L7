<?php

namespace App\Models\Roles;

/**
 * App\Models\Roles\Whitegloves
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
 * @property string $is_locked
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
 * @method static \Illuminate\Database\Eloquent\Builder|Whitegloves newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Whitegloves newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Whitegloves query()
 * @method static \Illuminate\Database\Eloquent\Builder|Whitegloves whereApiToken($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Whitegloves whereCardBrand($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Whitegloves whereCardLastFour($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Whitegloves whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Whitegloves whereDeletedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Whitegloves whereEmail($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Whitegloves whereEmailVerifiedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Whitegloves whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Whitegloves whereIsLocked($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Whitegloves whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Whitegloves wherePassword($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Whitegloves whereRememberToken($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Whitegloves whereStripeId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Whitegloves whereTrialEndsAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Whitegloves whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Whitegloves whereUuid($value)
 * @mixin \Eloquent
 */
class Whitegloves extends BaseUser
{
    //
}
