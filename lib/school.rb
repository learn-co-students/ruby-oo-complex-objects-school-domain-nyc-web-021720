require 'pry'
class School
    attr_accessor  :name, :roster

def initialize(name)
 @name = name
@roster = {}
end


def add_student(student_name, grade)
roster[grade] ||= []
roster[grade] << student_name
end

def grade(student_grade)
roster[student_grade]
end

def sort
roster.each do |key, value|
roster[key] = value.sort

end
end


end
