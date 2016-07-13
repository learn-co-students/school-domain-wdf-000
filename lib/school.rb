# code here!

class School
  attr_accessor :name
  attr_reader :roster
  

  def initialize(school_name)
    @name = school_name
    @roster = {}
  end
  
   def add_student(student_name, grade)
     if !@roster[grade]
      @roster[grade] = []
     end
     @roster[grade] << student_name
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
