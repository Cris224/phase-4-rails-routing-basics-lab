class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end

    def grades
        nerds = Student.all.sort_by{|s| -s.grade}
        render json: nerds
    end

end
