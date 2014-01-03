require_relative "../lib/teacher"
require "rspec"

describe Teacher do
  it "should store assignments" do
    student = double
    assignment = double
    subject.submit_assignment(student, assignment)
    subject.assignment_for_student(student).should eq(assignment)
  end


  describe "should record a grade" do
    it "should record the grade" do
      student = double
      assignment = double
      assignment.should_receive(:grade=).with(95)
      subject.submit_assignment(student, assignment)
      subject.record_grade(student, 95)
    end
  end

  describe "should provide an average grade for the class" do
    it "should provide an average grade" do
      assignment_doubles = {
                            student1: double("Assignment", grade: 95),
                            student2: double("Assignment", grade: 50),
                            student3: double("Assignment", grade: 80)
                            }
    subject.average_grade(assignment_doubles).should eq(75)
    end
  end
end
