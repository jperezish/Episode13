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
      student1    = double
      student2    = double
      student3    = double
      assignment1 = double("assignment 1")
      assignment2 = double("assignment 2")
      assignment3 = double("assignment 3")
      assignment1.stub(:grade=)
      assignment2.stub(:grade=)
      assignment3.stub(:grade=)
      assignment1.stub(:grade) { 95 }
      assignment2.stub(:grade) { 50 }
      assignment3.stub(:grade) { 80 }
      subject.submit_assignment(student1, assignment1)
      subject.submit_assignment(student2, assignment2)
      subject.submit_assignment(student3, assignment3)

      subject.average_grade.should eq(75)
    end
  end
end
