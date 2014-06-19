# features/home_page.feature
Feature: Index

  Scenario: View index page
    Given I'm on the index page
    When I search for "Camiseta Terno" in "produto[0]"
    And I click "buscar0"
    Then I should see "Camiseta Terno"

  Scenario: remembers past searches and compare products
    Given I'm on the index page
    When I search for "Camiseta Terno" in "produto[0]"
    And I click "buscar0"
    And I search for "Camiseta Gato Preto" in "produto[1]"
    And I click "buscar1"
    And I search for "Camiseta Tuxedo" in "produto[2]"
    And I click "buscar2"
    And I search for "Camiseta Calendário" in "produto[3]"
    And I click "buscar3"
    Then I should see "Camiseta Terno"
    And I should see "Camiseta Gato Preto"
    And I should see "Camiseta Tuxedo"
    And I should see "Camiseta Calendário"

  Scenario: shows two products only
    Given I'm on the index page
    When I check "numero2"
    Then I should not see "Produto 2"
    And I should not see "Produto 3"