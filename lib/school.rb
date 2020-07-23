# code here!

class School

  def initialize(roster)
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(value, key)

    if @roster.has_key? key
      @roster[key].insert(-1,value)
    else
      @roster[key] = [value]
    end
  end

  def grade(grade_key)
    @roster[grade_key]
    end

  def sort

    ary = []
    @roster.keys.sort.each do |key|
      ary << key
    end

    ary2 = {}
    ary.each do |key|
      ary2[key] = @roster[key].sort
    end

    ary2
  end

end
