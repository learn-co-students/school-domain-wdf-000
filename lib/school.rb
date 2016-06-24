# code here!
class School



def initialize (name)
  @name = name
  @roster = {}
end

def roster
 @roster
end


def add_student(name, grade)

  if @roster[grade] == nil 
    @roster[grade] = []
  end
  
  @roster[grade] << name
end

def grade(number)
  roster[number]
end

def sort
  # @roster = @roster.sort
  @roster.each {|keys,values| values.sort!}

  return roster
end

end

