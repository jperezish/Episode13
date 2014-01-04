require_relative "../lib/teacher"
require "rspec"

describe Teacher do
  before do
    @student = double
    @assignments = [double("one"), double("two")]
  end

  it "should store assignments" do
    subject.submit_assignment(@student, @assignments)
    subject.assignment_for_student(@student).should eq(@assignments)
  end

  it "should record the grade" do
    assignment.should_receive(:grade=).with(95)
    subject.submit_assignment(@student, @assignments)
    subject.record_grade(student: @student, 95)
  end

  it "should provide an average grade" do
    assignment_doubles = {
                          student1: double("Assignment", grade: 95),
                          student2: double("Assignment", grade: 50),
                          student3: double("Assignment", grade: 80)
                          }
  subject.average_grade(assignment_doubles).should eq(75)
  end

end
