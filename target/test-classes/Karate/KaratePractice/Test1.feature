#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template

Feature: First Karate Test
  
  Background:
  * url 'https://reqres.in/api/'
  * header Accept = 'application/json'
 
  Scenario: Get single User with url
    Given url 'https://reqres.in/api/users/2'
    When method GET
    Then status 200
  	And print response
  	And print responseStatus
  	And print responseHeaders
  	And print responseCookies

  Scenario: Get single User with path
    Given path 'users?page=2'
    When method GET
    Then status 200
    
   Scenario: Get single User with path
    Given path '/users'
    And param page = 2
    When method GET
    Then status 200
    
  Scenario: Get list of users
  Given path '/users'
    And param page = 2
    When method GET
    Then status 200
    And response.data[1].first_name=='Lindsay'
    And assert response.data[1].id==8
