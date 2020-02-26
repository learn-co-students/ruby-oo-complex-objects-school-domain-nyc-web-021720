class School

    attr_accessor :name, :roster

    def initialize(name)
        @name=name 
        @roster = Hash.new{|k,v| k[v]=[]}
    end

    def add_student(name, grade)
        @roster[grade] << name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.transform_values{|v| v.sort}
    end



end
