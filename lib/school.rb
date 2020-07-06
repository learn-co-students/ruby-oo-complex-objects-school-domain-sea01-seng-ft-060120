# code here!
class School 

    attr_accessor :roster

    def initialize(roster)
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(student, grade)
        if @roster.key?(grade) == false
        @roster[grade] = []
        @roster[grade].append(student) 
        else
            @roster[grade].append(student)
        end 
    end


    def grade(key)
        return roster[key]
    end 

    def sort
        new_hash = {}
        roster.each do |x,y|
            new_hash[x] = y.sort
        end 
        new_hash
    end 
end 