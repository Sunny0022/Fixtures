Feature: Checking the User Verification in the FlashSale Site

  Scenario Outline: Check whether the user is verified or not
  Given I am on flash sale site
  And I sign in with <mail_id> and <password>
  When I go to the Profile Page
  Then I should see the Name of the user
  And I should check the user verification
    Examples:
      | mail_id                 | password |
      | Robin_nicole@domain.com | robin123 |
