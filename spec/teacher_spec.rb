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
      student1 = double
      student2 = double
      student3 = double
      assignment = double("assignment")
      assignment.stub(:grade=)
      subject.submit_assignment(student1, assignment)
      subject.submit_assignment(student2, assignment)
      subject.submit_assignment(student3, assignment)
      subject.record_grade(student1, 95)
      subject.record_grade(student2, 50)
      subject.record_grade(student3, 80)

      subject.average_grade.should eq(75)
    end
  end
end
