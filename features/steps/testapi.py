from behave import *
from utility import API_Utility
api_util = API_Utility()

@when('User sends "{method}" call to endpoint "{endpoint}"')
def step_impl(context, method, endpoint):
    global response
    response = api_util.Method_Call(context.table, method, endpoint)
@then('User verifies the status code is "{status_code}"')
def step_impl(context, status_code):
    actual_status_code = response.status_code
    assert actual_status_code == int(status_code)

@step("User verifies GET response contains following information")
def step_impl(context):
    api_util.Verify_GET(context.table)
    response_body = response.json()
    print ("response_body =>" + response_body['data']['message'])
    print ("context table[0][0] =>" + context.table[0][0])
    assert response_body['data']['message'] == context.table[0][0]