require "pry"

class School
    def initialize (school)
        @school = school
        @roster = {}
    end
    
    def roster
        @roster
    end

    def add_student (name,grade)
        @roster[grade]||= @roster[grade]=[]
        @roster[grade]<<name
    end

    def grade(grade)
        @roster[grade]
    end    

    def sort
        roster.each do |grade, array|
            roster[grade]=array.sort()
        end
        roster
    end
end
