<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * App\Ticket.
 *
 * @property int $id
 * @property string $ticket_number
 * @property string $subject
 * @property string $body
 * @property int $owner_id
 * @property \Illuminate\Support\Carbon|null $deleted_at
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \App\Models\Roles\User $owner
 * @method static \Illuminate\Database\Eloquent\Builder|Ticket newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Ticket newQuery()
 * @method static \Illuminate\Database\Query\Builder|Ticket onlyTrashed()
 * @method static \Illuminate\Database\Eloquent\Builder|Ticket query()
 * @method static \Illuminate\Database\Eloquent\Builder|Ticket whereBody($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Ticket whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Ticket whereDeletedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Ticket whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Ticket whereOwnerId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Ticket whereSubject($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Ticket whereTicketNumber($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Ticket whereUpdatedAt($value)
 * @method static \Illuminate\Database\Query\Builder|Ticket withTrashed()
 * @method static \Illuminate\Database\Query\Builder|Ticket withoutTrashed()
 * @mixin \Eloquent
 */
class Ticket extends Model
{
    use SoftDeletes;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'ticket_number',
        'subject',
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
        'owner_id' => 'integer',
    ];

    public function owner()
    {
        return $this->belongsTo(\App\Models\Roles\User::class);
    }
}
