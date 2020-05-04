<?php

namespace App\General;

use App\Models\Roles\RoleCollection;
use File;
use Hash;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;

/**
 * Helper Class
 */
class DCASHelper
{

    /**
     * Get currently used guard name with path.
     *
     * @return array
     */
    public static function getGuardBuildMenu(): array
    {
        // BuildMenu
        //return ('\\App\\Models\\Roles\\' . ucfirst(self::getGuard()))::buildMenu();
    }

    /**
     * Get currently used guard name.
     *
     * @return string
     */
    public static function getGuard(): string
    {
        $guards = RoleCollection::factory();

        foreach ($guards as $guard) {
            if (Auth::guard($guard)->check()) {
                return $guard;
            }
        }
    }

    /**
     * Get middleware name.
     *
     * @return string
     */
    public static function getMiddleware(): string
    {
        return 'auth:' . self::getGuard();
    }

    /**
     * Create hardware serial number.
     *
     * @return string
     *
     * @uses \format 4CE0460D0G.
     */
    public static function makeSerialNumber(): string
    {
        $alpha = range('A', 'Z');
        $numbers = range(0, 9);

        $secondValues = array_rand($alpha, 2);
        $thirdValues = array_rand($numbers, 4);

        $serialNumber = $numbers[array_rand($numbers)] . $alpha[$secondValues[0]] . $alpha[$secondValues[1]] . $numbers[$thirdValues[0]] . $numbers[$thirdValues[1]] . $numbers[$thirdValues[2]] . $numbers[$thirdValues[3]] . $alpha[array_rand($alpha)] . $numbers[array_rand($numbers)] . $alpha[array_rand($alpha)];

        return $serialNumber;
    }

    /**
     * Create random password.
     *
     * @return string
     */
    public static function randomPassword(): string
    {
        return substr(Hash::make(Str::random(15)), - 26, - 1);
    }

    /**
     * Get all roles.
     *
     * @return array
     */
    public static function getRoles(): array
    {
        $output = [];

        $files = File::files(app_path('/Models/Roles'));

        foreach ($files as $file) {
            if ($file->getFilename() !== 'BaseRole.php') {
                array_push($output, strtolower(preg_replace('/\\.[^.\\s]{3,4}$/', '', basename($file))));
            }
        }

        $output = array_diff($output, ['irole', 'rolecollection']);

        return $output;
    }

    /**
     * Find a model.
     *
     * @param $query
     *
     * @return mixed|null
     */
    public static function getModel($query)
    {
        if ($query->has('model')) {
            foreach (DCASHelper::getModelsWithoutPath() as $model) {
                if (Str::contains($model, ucfirst($query->get('model')))) {
                    foreach (self::getModels() as $m) {
                        if (strpos($m, ucfirst($query->get('model')))) {
                            return $m;
                        }
                    }
                }
            }
        }

        return null;
    }

    /**
     * Get all models without their path.
     *
     * @return array
     */
    public static function getModelsWithoutPath(): array
    {
        $files = self::getModels();
        $fileList = [];

        foreach ($files as $file) {
            $f = explode('\\', $file);

            array_push($fileList, end($f));
        }

        return (new Collection($fileList))->flatten()->toArray();
    }

    /**
     * Get all models.
     *
     * @return array
     */
    public static function getModels(): array
    {
        $files = File::allFiles(app_path('Models'));
        $fileList = [];

        // optimize this mess.
        foreach ($files as $file) {
            foreach (explode(app_path(), $file) as $f) {
                foreach (explode('.php', $f) as $modelList) {
                    if ($modelList != '' && ! Str::contains($modelList, 'BaseModel') && ! Str::contains($modelList, 'BaseRole') && ! Str::contains($modelList, 'RoleCollection')) {
                        array_push($fileList, '\App' . str_replace('/', '\\', $modelList));
                    }
                }
            }
        }

        return $fileList;
    }

    /**
     * Output named routes.
     *
     * @param string $routeBase
     *
     * @return array
     */
    public static function makeNamedRoutes(string $routeBase): array
    {
        $routeTypes = [
            'index',
            'create',
            'show',
            'edit',
            'store',
            'update',
            'destroy',
        ];

        $routeValues = [];

        foreach ($routeTypes as $rt) {
            array_push($routeValues, self::plural($routeBase) . ".{$routeBase}.{$rt}");
        }

        return array_combine($routeTypes, $routeValues);
    }

    /**
     * Pluralize a string.
     *
     * @param     $string
     * @param int $count
     *
     * @return string
     */
    public static function plural($string, $count = 2): string
    {
        return Pluralize::make($string, $count);
    }

    /**
     * Will check if the write host is the same as the
     * read host given a connection name.
     *
     * @param string $connectionName
     *
     * @return bool
     */
    public static function connectionHasSameReadAndWrite(string $connectionName): bool
    {
        return config("database.connections.$connectionName.write.host") !== config("database.connections.$connectionName.read.host");
    }
}
