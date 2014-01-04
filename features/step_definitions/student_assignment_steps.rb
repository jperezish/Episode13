Given /^I am a student$/ do
  @student = Student.new
  @teacher = Teacher.new
end

When /^I submit the "(.*?)" assignment to my teacher$/ do |name|
  @assignment = Assignment.new(name)
  @assignments_to_turn_in ||= []
  @assignments_to_turn_in << @assignment
  @teacher.submit_assignment(@student, @assignments_to_turn_in)
end

Then /^my teacher should have my assignments$/ do
  @teacher.assignment_for_student(@student).should eq(@assignments_to_turn_in)
end
