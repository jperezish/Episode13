class Teacher
  attr_reader :assignments

  def initialize
    @assignments = {}
  end

  def record_grade(student, grade)
    assignment = @assignments[student]
    assignment.grade = grade
    @assignments[student] = assignment
  end

  def average_grade(assignments)
    class_grades = assignments.map { |student, assignment| assignment.grade }
    sum_of_class_grades = class_grades.inject(:+)
    sum_of_class_grades / assignments.size
  end

  def submit_assignment(student, pending_assignments)
    @assignments[student] ||= []
    @assignments[student].concat(pending_assignments)
  end

  def assignment_for_student(student)
    @assignments[student]
  end
end
