require 'pry'
class School 
   attr_accessor :name, :roster 
    def initialize(name)
        @name = name 
        @roster = {}
    end 
    def roster
        @roster
    end 
    
    
    def add_student(name, grade)
        if @roster.has_key?(grade)
            @roster[grade] << name 
        else 
            hash = {}
            @roster[grade] = []
            @roster[grade] << name  
        end 
    end 
    
    def grade(num)
        @roster[num]
    end 

    def sort 
        @roster.each do |keys,values|
        
            sorted_values = values.sort
            @roster[keys] = sorted_values
            @roster 
            
            
           
        end 
    end 
        
  
        
        
    
        
end 


