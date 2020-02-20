# code here!
class School

    attr_reader :name
    attr_reader :roster

    def initialize(school_name)
        @name = school_name
        @roster = {}
    end

    def add_student(student, grade)
        if !@roster.has_key?(grade) then
            @roster[grade] = []
        end
        @roster[grade] << student
    end

    def grade(student_grade)
        @roster[student_grade]
    end

    def sort
        @roster.map do |key, value|
            [key, value.sort]
        end.to_h
    end
end