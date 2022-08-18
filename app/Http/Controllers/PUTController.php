<?php

namespace App\Http\Controllers;

use App\Helpers\Response;
use App\Helpers\Validator;
use App\Models\Agent;
use App\Models\Company;

class PUTController extends Controller
{
    //

    public function agent()
    {
        /*
        request
        /agent
            id=A012&name=John&working-area=Cairo&commission=0.17
            &phone=325-32586945&country=Egypt
        */
        parse_str(file_get_contents("php://input"), $put);


        //validation
        $keys = [
            'id' => [
                'required' => true,
                'length' => Agent::VARS_LENGTHS['id'],
                'numeric' => true
            ],
            'name' => [
                'length' => Agent::VARS_LENGTHS['AGENT_NAME'],
                'db_name' => 'AGENT_NAME'
            ],
            'working-area' => [
                'length' => Agent::VARS_LENGTHS['WORKING_AREA'],
                'db_name' => 'WORKING_AREA'
            ],
            'commission' => [
                'length' => Agent::VARS_LENGTHS['COMMISSION'],
                'numeric' => true,
                'min' => 0,
                'max' => 1,
                'db_name' => 'COMMISSION'
            ],
            'phone' => [
                'length' => Agent::VARS_LENGTHS['PHONE_NO'],
                'db_name' => 'PHONE_NO'
            ],
            'country' => [
                'length' => Agent::VARS_LENGTHS['COUNTRY'],
                'db_name' => 'COUNTRY'
            ]
        ];
        $validation_result = Validator::validate($keys, $put);
        if ($validation_result['success'] === false) {
            return Response::error($validation_result['message']);
        }
        if (count($validation_result['params']) < 2) {
            return "There must be at least one parameter with the id to update record";
        }
        $params = $validation_result['params'];



        //action
        $db_params = [];
        foreach ($keys as $key => $constraints) {
            if (isset($constraints['db_name'])) {
                if (isset($params[$key])) {
                    $db_params[$constraints['db_name']] = $params[$key];
                }
            }
        }
        $result = Agent::where('id', $params['id'])->update($db_params);

        //response
        return ['success' => $result ? true : false];
    }

    public function company()
    {
        /*
        request
        /company
            ?id=16&name=Vortex&city=Munich
        */
        parse_str(file_get_contents("php://input"), $put);


        //validation
        $db_params = [];
        $keys = [
            'id' => [
                'required' => true,
                'length' => Company::VARS_LENGTHS['COMPANY_ID'],
                'numeric' => true,
                'db_name' => 'COMPANY_ID',
            ],
            'name' => [
                'length' => Company::VARS_LENGTHS['COMPANY_NAME'],
                'db_name' => 'COMPANY_NAME',
            ],
            'city' => [
                'length' => Company::VARS_LENGTHS['COMPANY_CITY'],
                'db_name' => 'COMPANY_CITY',
            ]
        ];
        $validation_result = Validator::validate($keys, $put);
        if ($validation_result['success'] === false) {
            return Response::error($validation_result['message']);
        }
        if (count($validation_result['params']) < 2) {
            return "There must be at least one parameter with the id to update record";
        }
        $params = $validation_result['params'];

        //action
        $db_params = [];
        foreach ($keys as $key => $constraints) {
            if (isset($constraints['db_name'])) {
                if (isset($params[$key])) {
                    $db_params[$constraints['db_name']] = $params[$key];
                }
            }
        }
        $result = Company::where('id', $params['id'])->update($db_params);

        //response
        return ['success' => $result ? true : false];
    }
}
