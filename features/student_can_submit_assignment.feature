Feature: Student Can Submit Assignments

  As a student
  I can submit my assignment
  So I can prove my knowledge

  Scenario: Student can submit an assignment
    Given I am a student
    When I submit the "Report on bears" assignment to my teacher
    Then my teacher should have my assignments

  Scenario: Student can submit multiple assignments
    Given I am a student
    When I submit the "Report on bears" assignment to my teacher
    And I submit the "Report on tigers" assignment to my teacher
    Then my teacher should have my assignments