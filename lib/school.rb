# code here!
class School
    def initialize(name)
      @name = name
      @roster = {}
    end

    def add_student(student,grade)
      @roster[grade] ||= []
      @roster[grade] << student
    end

    def roster
       @roster
    end

    def grade(grade)
        @grade = grade
       roster[grade]
    end

    def sort
        roster1 = {}
        @roster.each do |grade, students|
          roster1[grade] = students.sort
        end
        roster1
      end

end
