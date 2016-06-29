require "pry"
# code here!

class School
  attr_accessor :name, :roster
  def initialize(name)
    @name = name
    @roster = {} # allows us to access the hash from anywhere inside the class
  end

  # if grade is already a key, add the student to that array
  # else create the key and set it to empty array, then push student into array
  def add_student(student_name, grade)
    if @roster.has_key?(grade)
      @roster[grade] << student_name
    else
      @roster[grade] = []
      @roster[grade] << student_name
    end

    #using the conditional operator makes it much cleaner
    # roster[grade] ||= []
    # roster[grade] << student_name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
      @roster.each do |grade, students|
        students.sort!
      end
  end
end

# binding.pry
