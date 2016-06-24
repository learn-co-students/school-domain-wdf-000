# code here!
require 'pry'



class School

  attr_accessor :roster
  attr_reader :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, student_grade)
    (@roster.empty? || !@roster.keys.include?(student_grade)) ?
      @roster[student_grade] = [student_name] :
      @roster[student_grade] << student_name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster = @roster.sort_by { |grade, students| grade }.to_h

    @roster.each_value do |students|
      students.sort! {|x,y| x<=> y}
    end
  end


end
