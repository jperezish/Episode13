require_relative "../lib/assignment"

describe Assignment do
  before do
    @assignment = Assignment.new("Awesome report")
  end

  it "should store a grade" do
    @assignment.grade = 60
    @assignment.grade.should eq(60)
  end

  it "should have a name" do
    @assignment.name.should eq("Awesome report")
  end
end
