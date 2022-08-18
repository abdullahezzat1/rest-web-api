<?php

namespace App\Exceptions;

use Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;
use Throwable;

class Handler extends ExceptionHandler
{
    /**
     * A list of the exception types that are not reported.
     *
     * @var array<int, class-string<Throwable>>
     */
    protected $dontReport = [
        //
    ];

    /**
     * A list of the inputs that are never flashed for validation exceptions.
     *
     * @var array<int, string>
     */
    protected $dontFlash = [
        'current_password',
        'password',
        'password_confirmation',
    ];

    /**
     * Register the exception handling callbacks for the application.
     *
     * @return void
     */
    public function register()
    {
        $this->reportable(function (Throwable $e) {
            //
        });

        $this->renderable(function (Throwable $e) {
            $app_env = env('APP_ENV');
            if ($app_env === 'local') {
                $msg = "<pre> Error:\n\n";
                $msg .= $e->getMessage() . "\n\n";
                $msg .= $e->getTraceAsString() . "\n\n";
                $msg .= "</pre>";
                return response()->make($msg);
            } else {
                $response = new Response(
                    json_encode([
                        'success' => false,
                        'message' => "Internal server error"
                    ]),
                    500
                );
                $response->header('Content-Type', 'application/json');
                return $response;
            }
        });
    }
}
