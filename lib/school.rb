require 'pry'
class School
    def initialize(name)
        @name = name
        @roster = {}
    end
    def roster
        @roster
    end
    def student
        @student
    end
    def add_student(student, grade)
        if @roster.keys.include?(grade)
            @roster[grade] << student
        else
            @roster[grade] = [student]
        end
    end
    def grade(student_grade)
        @roster[student_grade]
    end
    def sort()
        new_hash = {}
        @roster.each do |grade, student|
            if new_hash.keys.include?(grade)
                new_hash[grade] << student.sort
            else
                new_hash[grade] = student.sort
            end
            # binding.pry
        end
        new_hash
        # => {7 => ["Blake Johnson", "Jack Bauer"], 9 => ["Bart Simpson", "Homer Simpson"], 10 => ["Avi Flombaum", "Jeff Baird"]}
    end
end

