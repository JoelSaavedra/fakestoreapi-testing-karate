@GetCarts
Feature: Plan de Pruebas GetCarts

  Background:
    Given url baseURL

    @CP01-getcarts @happypath
    Scenario: Validar que se obtengan todos los carritos
      Given path '/carts'
      When method GET
      * print response
      Then status 200


    @CP02-getcarts @happypath
    Scenario: Validar que se obtenga un carrito existente
      Given path '/carts/2'
      When method GET
      And match response.id==2
      * print response
      Then status 200

    @CP03-getcarts @unhappypath
    Scenario: Validar que no se obtenga un carrito con ID inexistente
      Given url '/carts/aaa'
      When method GET
      And match response.id == aaa
      * print response
      Then status 400
