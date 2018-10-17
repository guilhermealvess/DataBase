<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit6668e7ddaf7ad4cb4951ad2de129d314
{
    public static $prefixLengthsPsr4 = array (
        'P' => 
        array (
            'PostgreSQL\\' => 11,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'PostgreSQL\\' => 
        array (
            0 => __DIR__ . '/../..' . '/app',
        ),
    );

    public static $classMap = array (
        'PostgreSQL\\Connection' => __DIR__ . '/../..' . '/app/Connection.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInit6668e7ddaf7ad4cb4951ad2de129d314::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInit6668e7ddaf7ad4cb4951ad2de129d314::$prefixDirsPsr4;
            $loader->classMap = ComposerStaticInit6668e7ddaf7ad4cb4951ad2de129d314::$classMap;

        }, null, ClassLoader::class);
    }
}
