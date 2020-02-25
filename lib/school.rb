require 'pry'

class School

    attr_accessor :name, :roster
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name,grade)
    
        roster[grade] ||= []
       
        roster[grade] << student_name
    end

    def grade(student_grade)
        roster[student_grade]
    end
    def sort 
        puts roster
        sorted = {}
        roster.each do |grade_key,students|
            sorted[grade_key] = students.sort
            puts sorted
        end
        puts sorted
        sorted
    end
end
