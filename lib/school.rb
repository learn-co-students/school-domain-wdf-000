# code here!
class School
  attr_reader :roster, :name, :add_student

  def initialize(name)
    @name = name
    @roster = {}
  end


  def add_student(student, grade)
    if @roster.length == 0
      @roster[grade] = []
    elsif @roster[grade] == nil
      @roster[grade] = []
    end
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
    @roster.each do |k, v|
      v.sort!
    end


    
  end
end