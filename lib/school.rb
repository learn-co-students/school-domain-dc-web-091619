require 'pry'

class School
    attr_accessor :school, :roster

    def initialize(school)
        @school = school
        @roster = {}
    end

    def add_student(name, grade)
       if roster[grade]
        roster[grade] << name
       else roster[grade] = [name]
       end
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        new_roster = {}
        roster.map do |key, value|
            new_roster[key] = value.sort
        end
        new_roster
    end
end
