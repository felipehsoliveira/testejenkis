Feature: Validate Vilas Boas IT Tests page.

  Background:
  Given I am on "http://vilasboasit.com/tests.html"

  @tag @tag1
  Scenario: Check buttons, select box, checkbox, and fields in current page
  And I click on "btn_one" button
  When I select "ExampleOne" from "select_box"
  And I check "opt_one" in check box
  And I fill in "first_name" with "Test"
  Then I expect to not see "#btn_one"

  @tag @tag2
  Scenario: Check each buttons, select box, checkbox, and fields in current page
  And I click on each button
  When I select "ExampleOne" from "select_box"
  And I check each check box
  And I fill in all fields
  Then I expect to see all the buttons in buttons panel
