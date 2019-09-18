require "pry"
class School
attr_reader :name
attr_accessor :roster
    def initialize(name)
    @name=name
    @roster= {}
    end
    
    def add_student(name,grade)
        if @roster[grade]
            @roster[grade] << name
        else 
            @roster[grade] = [name]
        end
    end
   
    def grade(mark)
        return @roster[mark]
    end

    def sort       
        @roster.each do |grade,student| 
            @roster[grade] = student.sort
        end
        @roster
    end
end


