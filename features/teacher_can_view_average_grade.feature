Feature: Teacher can view average grade for the class

  As a Teacher
  I can view the average grade for my class
  So I can establish a grading curve

  Scenario: Teacher can view average grade for the class
    Given I have multiple students
    And each one has submitted an assignment
    When I give the assignments a grade
    Then I can view the average grade for my class
