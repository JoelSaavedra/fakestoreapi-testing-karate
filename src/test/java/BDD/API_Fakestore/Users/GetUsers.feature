Feature: Plan de Prueba

  Scenario: Caso de Prueba 01
    Given url 'https://fakestoreapi.com/users'
    When method GET
    Then status 200

    Scenario: Caso de Prueba 02
      Given url 'https://fakestoreapi.com/users/11'
      When method GET
      And response
      Then status 200