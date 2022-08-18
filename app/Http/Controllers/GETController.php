<?php

namespace App\Http\Controllers;

use App\Helpers\Response;
use App\Helpers\Validator;
use App\Models\Agent;
use App\Models\Company;
use App\Models\Customer;

class GETController extends Controller
{

    public function agents()
    {
        //request: /agents?working-area=London&from=1&to=10

        //validation
        $db_params = [];
        $keys = [
            'from' => [
                'length' => Customer::VARS_LENGTHS['id'],
                'default' => 1
            ],
            'to' => [
                'length' => Customer::VARS_LENGTHS['id'],
                'default' => 10
            ],
            'working-area' => [
                'length' => Agent::VARS_LENGTHS['WORKING_AREA']
            ]
        ];
        $validation_result = Validator::validate($keys, $_GET);
        if ($validation_result['success'] === false) {
            return Response::error($validation_result['message']);
        } else {
            $db_params = $validation_result['params'];
        }

        //action
        $result = Agent::where('id', '>=', $db_params['from'])
            ->where('id', '<=', $db_params['to']);
        if (isset($db_params['working-area'])) {
            $result = $result->where('WORKING_AREA', $db_params['working-area']);
        }
        $result = $result->get()->toArray();

        //response
        return Response::success($result);
    }

    public function companies()
    {
        //request: /companies?city=London&from=1&to=10

        //validation
        $keys = [
            'from' => [
                'length' => Company::VARS_LENGTHS['COMPANY_ID'],
                'numeric' => true,
                'default' => 1
            ],
            'to' => [
                'length' => Company::VARS_LENGTHS['COMPANY_ID'],
                'numeric' => true,
                'default' => 10
            ],
            'city' => [
                'length' => Company::VARS_LENGTHS['COMPANY_CITY'],
            ]
        ];
        $validation_result = Validator::validate($keys, $_GET);
        if ($validation_result['success'] === false) {
            return Response::error($validation_result['message']);
        } else {
            $db_params = $validation_result['params'];
        }
        // dd($db_params);

        //action
        $result = Company::where('COMPANY_ID', '>=', $db_params['from'])
            ->where('COMPANY_ID', '<=', $db_params['to']);
        if (isset($db_params['city'])) {
            $result->where('COMPANY_CITY', $db_params['city'] . "\r");
        }
        $result = $result->get()->toArray();

        //response
        return Response::success($result);
    }

    public function customers()
    {
        //request /customers?country=UK&from=1&to=10

        //validation
        $db_params = [];
        $keys = [
            'from' => [
                'length' => Customer::VARS_LENGTHS['id'],
                'default' => 1
            ],
            'to' => [
                'length' => Customer::VARS_LENGTHS['id'],
                'default' => 10
            ],
            'country' => [
                'length' => Customer::VARS_LENGTHS['CUST_COUNTRY'],
            ]
        ];
        $validation_result = Validator::validate($keys, $_GET);
        if ($validation_result['success'] === false) {
            return Response::error($validation_result['message']);
        } else {
            $db_params = $validation_result['params'];
        }

        //action
        $result = Customer::where('id', '>=', $db_params['from'])
            ->where('id', '<=', $db_params['to']);
        if (isset($db_params['country'])) {
            $result = $result->where('CUST_COUNTRY', $db_params['country']);
        }
        $result = $result->get()->toArray();

        //response
        return Response::success($result);
    }

    public function agent($agent_id)
    {
        //request /agents/{agent-id}

        //validation

        //action
        $result = Agent::where('id', $agent_id)->get();

        //response
        return Response::success($result);
    }

    public function company($company_id)
    {
        //request /companies/{company-id}

        //validation

        //action
        $result = Company::where('COMPANY_ID', $company_id)->get();

        //response
        return Response::success($result);
    }

    public function customer($customer_id)
    {
        //request: /customers/{customer-id}

        //validation

        //action
        $result = Customer::where('id', $customer_id)->get();

        //response
        return Response::success($result);
    }
}
