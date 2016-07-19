require 'pry'
# code here!
class School

  attr_reader :roster

  def initialize (name_of_school)
    @roster = {}
  end

  def add_student(name, grade)

    if(@roster.size == 0)
      @roster[grade] = []
      @roster[grade] << name

    elsif(@roster[grade])
      @roster[grade] << name

    else
      @roster[grade] = []
      @roster[grade] << name

    end
  end

  def grade(num)
    @roster.each do |grade, student_array|
      if(num == grade)
        return student_array
      end
    end
  end

  def sort
    temp_hash = {}
    @roster.each do |grade, student_array|
      temp_hash[grade] = student_array.sort
    end
    temp_hash
  end

end
