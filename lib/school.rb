class School

attr_reader :roster

def initialize(name)
  @name = name
  @roster = {}
end

def add_student(student_name, grade)
  if @roster[grade]
    @roster[grade] << student_name
  else @roster[grade] = [student_name]
  end
end

def grade(grade)
  @roster[grade]
end

def sort
  @roster.each {|grade, students| @roster[grade] = students.sort}
end

end
