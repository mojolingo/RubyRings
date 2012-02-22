@http://www.pivotaltracker.com/story/show/25122721
Feature: Admin should be able to define an extension
  As a pbx administrator
  I want to be able to add, edit, delete and list SIP extensions
  So that calls can be placed and received

  Scenario: Extensions
    Given I am a logged in as a pbx administrator
    When I create a SIP Extension numbered "100"
    And I choose to create a voicemail box for the extension
    Then I should see 'New Extension ("100") created'
    And I should see 'New voicemail box created'

