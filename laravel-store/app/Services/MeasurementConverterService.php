<?php

namespace App\Services;

class MeasurementConverterService
{
    public const MM = 'mm';
    public const CM = 'cm';
    public const IN = 'in';
    public const FT = 'ft';
    public const UNITS = [
        self::MM => 1,
        self::CM => 10,
        self::IN => 25.4,
        self::FT => 304.8,];
    public function convertUnit(array $dimensions, int $value, string $unitOfMeasurement): string
    {
        if ($value < 0) {
            throw new Exception('Dimension must be greater than 0');
        }
        if (!isset(self::UNITS[$unitOfMeasurement])) {
            throw new Exception('Invalid unit of measurement');
        }

        foreach ($dimensions as $dimension) {
            return number_format($dimension / self::UNITS[$unitOfMeasurement]) . $unitOfMeasurement;
            return number_format($dimension / self::UNITS[$unitOfMeasurement], 2) . $unitOfMeasurement;
        }
    };

