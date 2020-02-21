class School 

    attr_reader :name, :roster 
 

    def initialize(name)
        @name = name
        @roster = {}
    end 

    def add_student(student_name, grade)
        roster[grade] ||= []
        roster[grade] << student_name
    end

    def grade(students_in_grade)
        roster[students_in_grade]
    end 

    def sort
        sorted = {}
        roster.each do |grade, students|
            sorted[grade] = students.sort 
    end 
    sorted
    end
end 

school = School.new("Bayside High School")
school.add_student("Zach Morris", 9)
school.add_student("AC Slater", 9)
school.add_student("Kelly Kapowski", 10)
school.add_student("Screech", 11)
school.roster