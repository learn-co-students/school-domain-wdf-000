# code here!
require 'pry'

class School

  attr_accessor :roster

  attr_reader :name

  def initialize(name)
    @name = name
    @roster = {}   #instead of building  aroster method, you can just initialize it here
    #so that you can work on it and add things to it without returning an empty hash.
  end

  def grade(num)  #for this we just need to pick any name, doesn't have to match argument for aother methods
    @roster[num]
  end

  def sort
    @roster.each do |grade, student|
      student.sort!   #so if you add a bang! to the .sort method it modifies the original, as it stands
      #the .sort method will sort it, but you have to save it to a variable, OR using the bang will modify student
      #it does not modify student, .sort just returns a new array
    end
  end

  def add_student(student_name, grade)   #these arguments don't need to be def, they can be anything
    @roster[grade] ||= []   #the ||= is conditional assignment, where it means if whatever is on the left side
    #is anything except for false/nil, leave it like that, otherwise turn it into whatever is on the right
    @roster[grade] << student_name
  end


end