require "pry"
class School 
attr_accessor :roster, :name, :gade

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
    
        if !roster[grade]
            roster[grade] = [name]
        else
            roster[grade] << name
        end
        # roster[grade] ||= []
        # roster[grade] << name

# a ||= b ==> a exists or if not a = b
    end

    def grade(grade)
        roster[grade]
    end


    def sort
        sorted = {}
        roster.each do |grade, students|
            sorted[grade] = students.sort
        end
        sorted        
    
    end

end

new_school = School.new("Test School")
# binding.pry