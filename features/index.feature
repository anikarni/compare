# features/home_page.feature
Feature: Index

  Scenario: View index page
    Given I'm on the index page
    When I search for "Caneca" in "produto[0]"
    And I click "buscar0"
    Then I should see "Caneca"

  Scenario: remembers past searches and compare products
    Given I'm on the index page
    When I search for "Caneca" in "produto[0]"
    And I click "buscar0"
    And I search for "Carro" in "produto[1]"
    And I click "buscar1"
    And I search for "Exemplo1" in "produto[2]"
    And I click "buscar2"
    And I search for "Exemplo4" in "produto[3]"
    And I click "buscar3"
    Then I should see "Caneca"
    And I should see "Carro"
    And I should see "Exemplo1"
    And I should see "Exemplo4"

  Scenario: shows two products only
    Given I'm on the index page
    When I check "numero2"
    Then I should not see "Produto 2"
    And I should not see "Produto 3"