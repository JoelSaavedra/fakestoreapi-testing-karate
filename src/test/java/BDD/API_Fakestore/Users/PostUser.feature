@PostUser
Feature: Plan de Pruebas PostUser

  Background:
    Given url baseURL
    * def body = read('classpath:JSON/req/body.json')

    @CP01-postuser @happypath
    Scenario Outline: Validar la creación de usuario
      Given path '/users'
      When request body
      And method POST
      * print response
      Then status 200

      Examples:
      |username|email|password|
      |JoelSaavedra12|joelsaavedra@gmail.com|Tuntuntunsahur12|
      |JoseTolentinoAA|josetolentino@hotmail.com|TeAmoPeru12345.|
      |TralaleroTralala|tralaleroia@yahoo.com   |BallerinaCapuccina@|


    @CP02-postuser @unhappypath
    Scenario: Validar que no se puedan crear usuarios sin cuerpo
      Given path '/users'
      When method POST
      * print response
      Then status 400


    @CP03-postuser @unhappypath
    Scenario: Validar que no se puedan crear usuarios sin campos obligatorios
      Given path '/users'
      When request '{"username": }'
      And method POST
      * print response
      Then status 400





