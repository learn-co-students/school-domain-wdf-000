# code here!
class School

attr_accessor :roster, :name

  def initialize(name)
    @roster = {}
    @name = name
  end

# def add_student(name, grade)
#     if @roster.key?(grade)
#       x = @roster[grade]
#       x << name
#     else
#       @roster[grade] = [name]
#   end
# end

def add_student(name, grade)
  @roster[grade] ||= []
  @roster[grade] << name==
  end

def grade(number)
  @roster[number]

end

def sort
  @roster.each do |key, value|
  value.sort!
end
end


end


