require 'pry'
class School
    attr_accessor :roster, :name
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if roster.has_key?(grade)
            roster[grade] << name
        else
            roster[grade] = []
            roster[grade] << name
        end
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        sorted_roster = {}
        roster.map do |grade, student_names|
            sorted_roster[grade] = student_names.sort
        end
        sorted_roster
    end
end