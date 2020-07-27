@ignore
Feature: Get users test

Scenario: Get users from api

* def expectedOutput = read('result.json')

Given url 'https://reqres.in/api/users/2'
When method GET
Then status 200
Then print response
And match response == {"ad":{"company":"StatusCode Weekly","text":"A weekly newsletter focusing on software development, infrastructure, the server, performance, and the stack end of things.","url":"http:\/\/statuscode.org\/"},"data":{"last_name":"Weaver","id":2,"avatar":"https:\/\/s3.amazonaws.com\/uifaces\/faces\/twitter\/josephstein\/128.jpg","first_name":"Janet","email":"janet.weaver@reqres.in"}}
And match response == expectedOutput
And match response.data.id == 2
And match response.data.last_name != null