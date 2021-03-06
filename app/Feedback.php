<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Feedback.
 *
 * @property int $id
 * @property int $ticket_id
 * @property string|null $body
 * @property int $stars
 * @property int $owner_id
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \App\Models\Roles\User $owner
 * @property-read \App\Ticket $ticket
 * @method static \Illuminate\Database\Eloquent\Builder|Feedback newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Feedback newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Feedback query()
 * @method static \Illuminate\Database\Eloquent\Builder|Feedback whereBody($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Feedback whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Feedback whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Feedback whereOwnerId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Feedback whereStars($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Feedback whereTicketId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Feedback whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class Feedback extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'ticket_id',
        'body',
        'stars',
        'owner_id',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'id' => 'integer',
        'ticket_id' => 'integer',
        'owner_id' => 'integer',
    ];

    public function ticket()
    {
        return $this->belongsTo(\App\Ticket::class);
    }

    public function owner()
    {
        return $this->belongsTo(\App\Models\Roles\User::class);
    }
}
