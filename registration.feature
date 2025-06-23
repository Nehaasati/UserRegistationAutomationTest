Feature: Basketball England User Account Registration

  @Registration
  Scenario: Successful registration with valid credentials
    Given I am on the registration page
    When I fill in all the details
    And I agree to the terms and conditions
    And I should see a confirmation that I am over 18 years
    And I accept the code of ethics and conduct
    And I click on the "CONFIRM AND JOIN" button
    And I see it is redirecting to join page
    Then I should see a confirmation message

  @MissingLastName
  Scenario: Missing last name
    Given I am on the registration page
    When I fill in all the details except the last name
    And I agree to the terms and conditions
    And I click on the "CONFIRM AND JOIN" button
    Then I should see an error message for missing last name

  @MismatchPassword
  Scenario: Passwords do not match
    Given I am on the registration page
    When I fill in the details with mismatched passwords
    And I agree to the terms and conditions
    And I click on the "CONFIRM AND JOIN" button
    Then I should see a message with mismatch password error

  @TermsNotAccepted
  Scenario: Terms and Conditions not accepted
    Given I am on the registration page
    When I fill in all the details
    And I do not agree with the terms and conditions
    And I click on the "CONFIRM AND JOIN" button
    Then I should see an error message for not accepting the terms