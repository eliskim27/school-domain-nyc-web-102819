class School

    def initialize(name)
        @name = name
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(student_name, grade)
        if @roster.key?(grade)
        else
            @roster.store(grade, [])
        end
        @roster[grade] << student_name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted = {}
        @roster.each do |grade,students|
            sorted[grade] = students.sort
        end
        sorted
    end


end
