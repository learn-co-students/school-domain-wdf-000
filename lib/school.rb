class School
  attr_accessor :roster
  attr_reader :name
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    @roster[grade] ? @roster[grade] << student : @roster[grade] = [student]
  end

  def grade(grade)
    @roster[grade]
  end

  #The simple & pretty version
  # def sort
  #   @roster.each do |grade, students|
  #      @roster[grade].sort!
  #   end
  # end

  #The passing around objects-version just for the heck of it :D
  def sort
    @roster.keys.each_with_object({}) do |grade, sorted_students|
      sorted_students[grade] = @roster[grade].sort
    end
  end
end
