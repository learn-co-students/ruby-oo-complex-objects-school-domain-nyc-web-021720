class School


  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    if @roster[grade] != nil # don't forget this line (will get undefined method for nil class error)
      @roster[grade] << name
    else
      @roster[grade] = [name] # make sure to put name in brackets. Otherwise it will add to the key name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |key, value|
      value.sort!
    end
  end

end
