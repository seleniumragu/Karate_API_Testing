Feature: Get users test

Background: 
* def expectedOutput = read('result.json')

Scenario: Get users from api two
Given url 'https://reqres.in/api/users/2'
When method GET
Then status 200
Then print response
And match response == expectedOutput[0]

@parallel=false
Scenario: Get users from api three
Given url 'https://reqres.in/api/users/3'
When method GET
Then status 200
Then print response
And match response == expectedOutput[1]
