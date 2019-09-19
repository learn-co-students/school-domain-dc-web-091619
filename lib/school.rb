
class School
    attr_reader :roster

    def initialize(school_name)
        @schoolname = school_name
        @roster = {}
    end

    def add_student(student_name, student_grade)
    
        if !@roster.key?(student_grade) 
            @roster[student_grade] = []
        end
        @roster[student_grade] << student_name

    end
    
    #if roster has a key of sutdent_grade  
    #then push student_name to array 
    #else create key of student_grade
    #then push to empty array

    def grade (student_grade)
        return @roster[student_grade]
    end

     def sort  
        @roster.each do |student_grades, student_names|
            student_names.sort!
        end
    end
    
end