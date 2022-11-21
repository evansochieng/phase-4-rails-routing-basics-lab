class StudentsController < ApplicationController

    # display students list
    def index 
        students = Student.all
        render json: students
    end

    #order student list by grade
    def grades 
        stude = Student.all.order(grade: :desc)
        render json: stude
    end

    # return student with highest grade
    def highest_grade
        stud = Student.all.order(grade: :desc).limit(1).first
        render json: stud
    end
end
