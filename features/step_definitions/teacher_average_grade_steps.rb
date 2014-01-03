Given /^I have multiple students$/ do
  @teacher  = Teacher.new
  @student1 = Student.new
  @student2 = Student.new
  @student3 = Student.new
end

Given /^each one has submitted an assignment$/ do
  @teacher.submit_assignment(@student1, Assignment.new)
  @teacher.submit_assignment(@student2, Assignment.new)
  @teacher.submit_assignment(@student3, Assignment.new)
end

When /^I give the assignments a grade$/ do
  @teacher.record_grade(@student1, 95)
  @teacher.record_grade(@student2, 50)
  @teacher.record_grade(@student3, 80)
end

Then /^I can view the average grade for my class$/ do
  @teacher.average_grade(@teacher.assignments).should eq(75)
end