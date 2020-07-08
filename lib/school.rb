# code here!
class School
    
    def initialize(name)
        @name = name
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(student, grade)
        @student = student
        @grade = grade
        @roster[grade] ||= []
        @roster[grade] << student 
    end

    def grade(grade)
        @grade = grade
        @roster[grade]
    end 

    def sort
        @roster.each do |grade, value| 
            @roster[grade] = value.sort
        end
    end
end