Feature: Test Airport API
# Reference: https://spurqlabs.com/python-behave-api-testing-bdd-framework/
  # 1) To run the .feature file and output test in JSON file
  # Go to terminal within this pycharm studio, run command => behave features/testapi.feature -f allure_behave.formatter:AllureFormatter -o Report_Json
  # 2) Run allure report server and provide location of your JSON files => allure serve /Users/tony.t/PycharmProjects/pythonProject/Report_Json
  # 3) View your report on the browser http://10.0.0.35:52596/index.html#
  # 4) To shutdown report server, in the command line, type control+c

Verify the GET PUT POST DELETE methods of User API
  @api
  Scenario: Verify GET call for single user
    When User sends "GET" call to endpoint "api/v1/airports/1"
    Then User verifies the status code is "200"
    #And User verifies GET response contains following information
     # | Message
      #| Hello World
    # To generate report from behave JSON file, you need to install allure report https://allurereport.org/docs/install-for-macos/

