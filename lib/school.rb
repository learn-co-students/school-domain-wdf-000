class School
attr_accessor :name, :roster


	def initialize(name)
		@name = name
		@roster = {}
	end

	def add_student(student_name, grade)
		if @roster[grade]
		   @roster[grade] << student_name
		else
			@roster[grade] = [student_name]
	  end
	end 

	def grade(grade)
	   @roster[grade]
    end

    def sort
	    sorted = {}
	    @roster.sort.each do |grade, name_array|
		sorted[grade] = name_array.sort
		end
	    sorted   
	end
end

#another way

	# def sort
	# 	@roster.each do |grade, students|
	# 		@roster[grade] = students.sort
	# 	end
	# 	@roster
	# 	end
	# end

