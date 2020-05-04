<?php

namespace App\Models\Roles;

use Illuminate\Support\Collection;

class RoleCollection extends Collection
{

    /**
     * @var string
     */
    protected static $default = 'customer';

    /**
     * @var array
     */
    protected $items = [
        'customer'    => 'customer',
        'employee'    => 'employee',
        'vendor'      => 'vendor',
        'whitegloves' => 'whitegloves',
    ];

    /**
     * RoleCollection constructor.
     *
     * @param array $items
     */
    public function __construct($items = [])
    {
        $items = $this->items;

        parent::__construct($items);
    }

    /**
     * @return string
     */
    public static function default()
    {
        return self::$default;
    }

    /**
     * @return \App\Models\Roles\RoleCollection
     */
    public static function factory()
    {
        return new RoleCollection;
    }
}
