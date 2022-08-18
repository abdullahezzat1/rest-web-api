<?php

namespace App\Http\Controllers;

use App\Helpers\Response;
use App\Helpers\Validator;
use App\Models\Agent;
use App\Models\Company;
use Illuminate\Http\Request;

class POSTController extends Controller
{
    //

    public function agent()
    {
        /*
        request:
         path: /agent
         body: name=Samuel&working-area=Cairo&commission=0.17
                &phone=325-32586945&country=Egypt
        */
        parse_str(file_get_contents("php://input"), $post);

        //valdiation
        $db_params = [];
        $keys = [
            'name' => [
                'required' => true,
                'length' => Agent::VARS_LENGTHS['AGENT_NAME']
            ],
            'working-area' => [
                'required' => true,
                'length' => Agent::VARS_LENGTHS['WORKING_AREA']
            ],
            'commission' => [
                'required' => true,
                'length' => Agent::VARS_LENGTHS['COMMISSION'],
                'numeric' => true,
                'min' => 0,
                'max' => 1,
            ],
            'phone' => [
                'required' => true,
                'length' => Agent::VARS_LENGTHS['PHONE_NO']
            ],
            'country' => [
                'required' => true,
                'length' => Agent::VARS_LENGTHS['COUNTRY']
            ]
        ];
        $validation_result = Validator::validate($keys, $post);
        if ($validation_result['success'] === false) {
            return Response::error($validation_result['message']);
        } else {
            $db_params = $validation_result['params'];
        }


        //action
        $agent = new Agent();
        $agent->agent_name = $db_params['name'];
        $agent->working_area = $db_params['working-area'];
        $agent->commission = $db_params['commission'];
        $agent->phone_no = $db_params['phone'];
        $agent->country = $db_params['country'];
        $result = $agent->save();

        //response
        return ['success' => $result ? true : false];
    }

    public function company()
    {
        /*
        request
            /company
            ?name=Vortex&city=Munich
        */
        parse_str(file_get_contents("php://input"), $post);


        //validation
        $db_params = [];
        $keys = [
            'name' => [
                'required' => true,
                'length' => Company::VARS_LENGTHS['COMPANY_NAME']
            ],
            'city' => [
                'required' => true,
                'length' => Company::VARS_LENGTHS['COMPANY_CITY']
            ]
        ];
        $validation_result = Validator::validate($keys, $post);
        if ($validation_result['success'] === false) {
            return Response::error($validation_result['message']);
        } else {
            $db_params = $validation_result['params'];
        }

        //action
        $company = new Company();
        $company->company_name = $db_params['name'];
        $company->company_city = $db_params['city'];
        $result = $company->save();

        //response
        return ['success' => $result ? true : false];
    }
}
