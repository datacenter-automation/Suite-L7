<?php

use App\Models\ApiMapper;
use Illuminate\Database\Seeder;
use Ramsey\Uuid\Uuid;

class ApiMapperSeeder extends Seeder
{
    //'uuid',
    private array $api_codes;

    private array $status_codes = [
        500,
        401,
        401,
        503,
        418,
        402,
        401,
        401,
        401,
        403,
        400,
        400,
        400,
        404,
        400,
        400,
        400,
        400,
        500,
        502,
    ];

    private array $reasons = [
        'General (unknown) error',
        'Customer account not found (possible bad subdomain',
        'Customer account inactive',
        'Customer account suspended',
        'Customer account banned',
        'Paid customer account inactive due to non-payment',
        'User not found',
        'User not active',
        'Invalid auth (bad username/password)',
        'Permissions error. User/Company does not have access to this information',
        'Maximum number of daily API requests exceeded',
        'Requests too fast',
        'Resource type requested does not exist',
        'Resource requested does not exist',
        'Action not available for resource',
        'HTTP method not available',
        'Parameter not recognized',
        'Validation error',
        'Database Error',
        'Service offline',
    ];

    /**
     * Run the database seeds.
     *
     * @return void
     * @throws \Exception
     */
    public function run()
    {
        $this->api_codes = range(1, 20);

        for ($i = 0; $i < count($this->reasons); $i++) {
            ApiMapper::create([
                'uuid'        => Uuid::uuid4()->toString(),
                'api_code'    => $this->api_codes[$i],
                'status_code' => $this->status_codes[$i],
                'reason'      => $this->reasons[$i],
            ]);
        }
    }
}
