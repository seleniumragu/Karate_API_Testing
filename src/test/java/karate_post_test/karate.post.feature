Feature: Get post test

Background:

Scenario: Get users from post api

Given url 'https://reqres.in/api/users'
And request '{"name": "morpheus","job": "leader"}'
When method POST
Then status 201
Then print response