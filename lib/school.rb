

class School
    attr_accessor :name, :roster
  
    def initialize(name) #starts when every instance is made
      @name = name       
      @roster = {}       #hash created for every instance
    end
  
    def add_student(student_name, grade) 
      roster[grade] ||= []  #if the grade is undefined, evaluate [] and set the grade as the default
      roster[grade] << student_name 
    end
    
    def grade(number)
        roster[number]
    end

    def sort 
        sorted = {}
        roster.each do |grade,student_object|
            sorted[grade] = student_object.sort
        end
        sorted
    end 
end
