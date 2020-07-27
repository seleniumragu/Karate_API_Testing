Feature: Get users test

Scenario: Get users from api

* def expectedOutput = read('result.json')

Given url 'https://reqres.in/api/users/2'
When method GET
Then status 200
Then print response
And match response == expectedOutput
And match response.data.id == 10000
And match response.data.last_name != null