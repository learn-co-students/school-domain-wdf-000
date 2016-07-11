class School
  attr_accessor :student, :grade, :roster
  
  def initialize(student)
    @student = student
    @roster = {}
  end

  def add_student(student, grade)
  if @roster[grade] == nil
    @roster[grade] = []
  end
  @roster[grade] << student
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, student|
    @roster[grade] = student.sort
  end
  end

end