Feature: Post test

  Scenario: Get single User with path
    Given url 'https://reqres.in/api/users'
    And request {"name": "Sumana", "job": "QA Tester"}
    When method POST
    Then status 201
		And print response
		And match  response contains {"name":"Sumana","job":"QA Tester"}