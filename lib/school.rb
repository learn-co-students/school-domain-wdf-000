# code here!

class School
	attr_accessor :name, :roster
	def initialize (name)
		@name = name
		@roster = {}
	end

	def add_student(name,grade)
		@roster[grade] = [] if !@roster.key?(grade)
		@roster[grade] << name
	end
	def grade(grade)
		@roster[grade]
	end

	def sort
		#sorts the grade in order
		@roster.sort do | a , b |
			a <=> b
		end
		#sorts the student names in alphabetical order
		@roster.each do |  k , v |
			@roster[k] = v.sort
		end
	end
end


