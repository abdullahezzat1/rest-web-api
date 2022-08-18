<?php

namespace App\Http\Controllers;

use App\Helpers\Response;
use App\Helpers\Validator;
use App\Models\Agent;
use App\Models\Company;

class DELETEController extends Controller
{
    //

    public function agent()
    {
        /*
        request
            /agent
            id=A022
        */
        parse_str(file_get_contents("php://input"), $delete);

        //validation
        $keys = [
            'id' => [
                'required' => true,
                'length' => Agent::VARS_LENGTHS['id']
            ]
        ];
        $validation_result = Validator::validate($keys, $delete);
        if ($validation_result['success'] === false) {
            return Response::error($validation_result['message']);
        }
        $db_params = $validation_result['params'];

        //action
        $result = Agent::destroy($db_params['id']);

        //response
        return ['success' => $result ? true : false];
    }

    public function company()
    {
        /*
        request
            /company
            id=22
        */
        parse_str(file_get_contents("php://input"), $delete);

        //validation
        $keys = [
            'id' => [
                'required' => true,
                'length' => Agent::VARS_LENGTHS['id']
            ]
        ];
        $validation_result = Validator::validate($keys, $delete);
        if ($validation_result['success'] === false) {
            return Response::error($validation_result['message']);
        }
        $db_params = $validation_result['params'];

        //action
        $result = Company::destroy($db_params['id']);

        //response
        return ['success' => $result ? true : false];
    }
}
