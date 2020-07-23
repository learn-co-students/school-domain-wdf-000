require 'pry'
class School

  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(val)
    @roster[val]
  end

  def sort
    sort = {}
    @roster.each do |grade, name|
      sort[grade] = name.sort
    end
    sort
  end
  
end

