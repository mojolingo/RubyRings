@http://www.pivotaltracker.com/story/show/25122789
Feature: Admin should be able to define SIP trunks
  As a pbx administrator
  I want to be able to add, edit, delete and list SIP trunks
  So that calls can be received or placed using the system

  Scenario: Create a Trunk
    Given the following trunk records
    | name          |
    | super_trunk07 |
    | big_blue      |
    And I am a logged in as a pbx administrator
    When I create a SIP trunk named  "my_trunk"
    Then I should see 'Succesfully created new SIP Trunk ("my_trunk")'
    And I should see 3 trunks

    #  Scenario: See the Trunks listed
    #Given I am a logged in as a pbx administrator
    #When I create a SIP trunk named  "my_trunk"
    #Then I should see 'Succesfully created new SIP Trunk ("my_trunk")'
