# code here!

class School

 def initialize(name)
   @name = name
   @roster = {}
end

 def roster
   @roster
 end


 def add_student(name, grade)
    if  @roster[grade].class != Array
        @roster[grade] = Array.new
    end

   @roster[grade] << name
 end

def grade(grade)
  @roster[grade]
end

def sort
  @roster.each do |grade, array_names|
    @roster[grade] = array_names.sort
  end
  @roster
end

end
