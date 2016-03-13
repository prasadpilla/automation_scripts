Feature: Google search functionality

  Scenario: Users can search for a specific search-term
    Given User is at google home page
    When User searches for "books"
    Then  Search results should contain "flipkart"
