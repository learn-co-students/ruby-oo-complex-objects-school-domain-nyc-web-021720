# code here!

class School

attr_accessor :name, :roster

def initialize(name)
    @name = name 
    @roster = {}
end 

def add_student(name, grade)
     if !roster[grade] 
        roster[grade] = []
        roster[grade] << name
     else  
       roster[grade] << name  
     end  
end    

def grade(grade)
    @roster[grade]
end 

def sort
  sorts = {}
   roster.each do |grade, student|
    sorts[grade] = student.sort
  end 
  sorts
end 

end 