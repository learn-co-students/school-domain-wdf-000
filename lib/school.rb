# code here!
class School
  attr_reader :roster, :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    @roster[grade] = [] if @roster.length == 0 || @roster[grade] == nil
    @roster[grade] << student
  end

  def roster=(roster)
    @roster = roster
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.keys.sort
    @roster.each {|k, v| v.sort! }
  end

end