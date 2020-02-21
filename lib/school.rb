# code here!
class School
    attr_accessor :roster, :name
    def initialize(name)
        @name = name
        @roster = {}
    end 
def add_student(student_name, grade)
    roster[grade] ||= []
    roster[grade] << student_name
end
def grade(student_grade)
    @roster[student_grade]
end
def sort
    sorted_array = {}
        roster.each do |grade, student|
           sorted_array[grade] = student.sort
        end

        sorted_array
    end
end 
