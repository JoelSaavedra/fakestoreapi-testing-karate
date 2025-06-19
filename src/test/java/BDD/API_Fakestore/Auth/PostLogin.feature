@PostLogin
Feature: Plan de Pruebas PostLogin

  Background:
    Given url baseURL

    @CP01-postlogin @happypath
    Scenario: Validar Login exitoso
      Given path 'auth/login'
      And request {"username": "johnd", "password": "m38rmF$"}
      When method POST
      * print response
      Then status 200
      And match response.token != null

    @CP02-postlogin @unhappypath
    Scenario: Validar Login fallido por valores inválidos en campos obligatorios
      Given path 'auth/login'
      And request {"username": "Turroni12", "password": "Bombardini@12."}
      When method POST
      * print response
      Then status 401

    @CP03-postlogin @unhappypath
    Scenario: Validar Login fallido por falta de valores en campos obligatorios
      Given path 'auth/login'
      And request {"username": "", "password": ""}
      When method POST
      * print response
      Then status 400