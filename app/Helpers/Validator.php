<?php

namespace App\Helpers;

class Validator
{
  public static function validate($keys_array, $http_array)
  {
    $success_params = [];
    foreach ($keys_array as $key => $constraints) {
      if (!isset($http_array[$key])) {
        if (isset($constraints['required'])) {
          return [
            'success' => false,
            'message' => "'$key' is required"
          ];
        } elseif (isset($constraints['default'])) {
          $success_params[$key] = $constraints['default'];
          continue;
        } else {
          continue;
        }
      }
      if (isset($constraints['length'])) {
        if (strlen($http_array[$key]) > $constraints['length']) {
          return [
            'success' => false,
            'message' => "'$key' must be less than {$constraints['length']} characters"
          ];
        }
      }
      if (isset($constraints['numeric'])) {
        if (!is_numeric($http_array[$key])) {
          return [
            'success' => false,
            'message' => "'$key' must be numeric"
          ];
        }
      }
      if (isset($constraints['min'])) {
        if ($http_array[$key] < $constraints['min']) {
          return [
            'success' => false,
            'message' => "'$key' must be larger than {$constraints['min']}"
          ];
        }
      }
      if (isset($constraints['max'])) {
        if ($http_array[$key] > $constraints['max']) {
          return [
            'success' => false,
            'message' => "'$key' must be less than {$constraints['max']}"
          ];
        }
      }
      $success_params[$key] = $http_array[$key];
    }
    return [
      'success' => true,
      'params' => $success_params
    ];
  }
}
