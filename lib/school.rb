# code here!
class School
  attr_accessor :name, :roster
  def initialize(name)
    @name = name
    @roster = {}
  end

  # def roster
  #   roster
  # end

  def add_student(name, grade)
    if roster.length == 0 || !@roster.keys.include?(grade)
      roster[grade] = []
      roster[grade] << name
    else
      roster[grade] << name
    end
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.each do |grade, name|
      roster[grade] = name.sort
    end
  end


end
