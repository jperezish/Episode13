class Teacher
  def initialize
    @assignments = {}
  end

  def record_grade(student, grade)
    assignment = @assignments[student]
    assignment.grade = grade
    @assignments[student] = assignment
  end

  def average_grade
    sum_of_class_grades = 0
    number_of_students_in_the_class = @assignments.count
    @assignments.each do |student, assignment|
      sum_of_class_grades += assignment.grade
    end
    sum_of_class_grades / number_of_students_in_the_class
  end

  def submit_assignment(student, assignment)
    @assignments[student] = assignment
  end

  def assignment_for_student(student)
    @assignments[student]
  end
end
