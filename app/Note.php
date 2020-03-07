<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Note
 *
 * @property int $id
 * @property int $ticket_id
 * @property string $body
 * @property int $owner_id
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \App\Models\Roles\Internal $owner
 * @property-read \App\Ticket $ticket
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Note newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Note newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Note query()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Note whereBody($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Note whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Note whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Note whereOwnerId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Note whereTicketId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Note whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class Note extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'ticket_id',
        'body',
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
        return $this->belongsTo(\App\Models\Roles\Internal::class);
    }
}
