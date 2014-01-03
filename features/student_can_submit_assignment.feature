Feature: Student Can Submit Assignments

  As a student
  I can submit my assignment
  So I can prove my knowledge

  Scenario: Student can submit an assignment
    Given I am a student
    When I submit an assignment to my teacher
    Then my teacher should have my assignment
