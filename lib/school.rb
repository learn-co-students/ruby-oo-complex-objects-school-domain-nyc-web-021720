# code here!

class School

  attr_reader :roster 

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student, grade)
    @roster[grade]||= @roster[grade] = []
    @roster[grade] << student 
  end

  def grade(grade)
    @roster.select do |key, array_of_students| 
         return array_of_students if key == grade 
    end
  end

  def sort 
    @roster.map do |grade, array_of_students|
      sorted_array_of_students = array_of_students.sort
      [grade, sorted_array_of_students]
    end.to_h

    # @roster.each_value { |value| value.sort! }
  end

end

