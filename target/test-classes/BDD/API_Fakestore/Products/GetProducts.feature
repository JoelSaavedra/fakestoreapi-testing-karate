@GetProducts
Feature: Plan de Pruebas GetProducts

  Background:
    Given url baseURL

    @CP01-getproducts @happypath
    Scenario: Validar que se obtengan todos los productos
      Given url '/products'
      When method GET
      * print response
      Then status 200

    @CP02-getproducts @happypath
    Scenario: Validar que se obtenga un producto existente
      Given url '/products/1'
      When method GET
      And match response.id == 1
      * print response
      Then status 200

    @CP03-getproducts @unhappypath
    Scenario: Validar que no se obtenga un producto con ID inexistente
      Given url '/products/155'
      When method GET
      And match response.id == 155
      * print response
      Then status 400