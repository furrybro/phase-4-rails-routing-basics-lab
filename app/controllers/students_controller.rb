class StudentsController < ApplicationController
    
    def index
        students = Student.all
        render json: students
    end

    def grades
        by_grades = Student.all.order(grade: :desc)
        render json: by_grades
    end

end
