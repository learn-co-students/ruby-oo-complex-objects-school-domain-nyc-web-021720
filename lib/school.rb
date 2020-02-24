class School
    attr_accessor :school_name, :roster 
    
    def initialize(school_name)
        @school_name= school_name 
        @roster = {}
    end

    def add_student(student_name, grade)
        roster[grade] ||= []
        roster[grade].push(student_name) 
    end

    def grade(grade) 
        @roster[grade]
    end  

    def sort 
     @roster.each_value{|value| value.sort!}
    end 
        
end

