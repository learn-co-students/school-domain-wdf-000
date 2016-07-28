# code here!
require "pry"
class School
	attr_reader :name, :roster

	def initialize(name)
		@name = name
		@roster = {}
	end

	def add_student(student_name, grade)
		if @roster.empty?
			@roster[grade] = []
			@roster[grade] << student_name
        elsif @roster.keys.include?(grade)
			@roster[grade] << student_name
		else
			@roster[grade] = []
			@roster[grade] << student_name
		end
	end

	def grade(grade)
		@roster[grade]
	end

	def sort
		@roster.each do |grade, names|
			names.sort!
		end
	end

end