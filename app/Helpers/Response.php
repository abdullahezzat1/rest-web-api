<?php

namespace App\Helpers;

use Illuminate\Http\Response as HttpResponse;

class Response
{
  public static function error($message)
  {
    $status = 400;
    $body = [
      'message' => $message
    ];
    $response = new HttpResponse($body, $status);
    $response->header('Content-Type', 'application/json');
    return $response;
  }


  public static function success($data)
  {
    $status = 200;
    $body = [
      'data' => $data
    ];
    $response = new HttpResponse($body, $status);
    $response->header('Content-Type', 'application/json');
    return $response;
  }
}
