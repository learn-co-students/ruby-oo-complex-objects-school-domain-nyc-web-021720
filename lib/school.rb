class School 
    attr_accessor :name, :roster
   
    def initialize (name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade_number)
        @roster[grade_number] ||= []
        @roster[grade_number] << name
    end

    def grade(grade_number)
        roster[grade_number]
    end

    def sort
        var1 = {}
        roster.each do |grade, student|
           var1[grade] = student.sort
        end

        var1
    end
    
end