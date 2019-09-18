# code here!
require "pry"
class School 
    attr_reader :school_name

    def initialize(school_name)
        @school_name = school_name
        @roster = {} 
    end

    def roster      #empty roster
        @roster
    end

    def add_student(name, grade)    #student setter
        @student_name = name
        @grade = grade
        if @roster.include?(grade) == false #looks to see if that grade intered is already in the roster
          @roster[grade] = []               #if false it will add a new array into it
        end
        @roster[grade] << name              #if not then it will add it to the roster there the key matches
    end

    def grade(number)
        @roster[number]
    end

    def sort
        @roster.each do |grade, name|
            @roster[grade] = name.sort
        end
    end

end
