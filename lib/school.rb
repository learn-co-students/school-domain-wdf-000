# code here!
class School
  attr_reader :name, :roster
  #attr_accessor :name, :roster

  def initialize(school)
    @name = school
    @roster = {}
  end

  def add_student(names, grade)
    @roster[grade] ||= []
    @roster[grade] << names
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each {|grade, students| students.sort!}
  end
end
