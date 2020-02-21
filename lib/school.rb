class School
    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
       if !@roster[grade]
        @roster[grade] = []
        @roster[grade] << name
       else
        @roster[grade] << name
       end
    end
    
    def grade(grade)
        return roster[grade]
    end

    def sort
        sorted = {}
        roster.each do |grade, students|
            sorted[grade] = students.sort
        end
    return sorted
    end
end

