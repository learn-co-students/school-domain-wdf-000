class School
  attr_reader :roster, :name
  def initialize(name)
    @name = name
    @roster = {}
  end
  def add_student(student, year)
    @roster[year] = [] if @roster[year] == nil
    @roster[year] << student
  end
  def grade(year)
    @roster[year]
  end
  def sort
    @roster.keys.each do |year|
      @roster[year] = @roster[year].sort
    end
    @roster
  end
end
