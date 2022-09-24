class StudentsController < ApplicationController
    #returns an array of all students
    def index
    students = Student.all
    render json: students

    end

    #returns an array of all students ordered by grade
    def grades
        students = Student.order(grade: :desc)
        render json: students
        
    end
    
    #returns an json data for one student with the highest grade
    def highest_grade
        student = Student.order(grade: :desc).first
        render json:student
    end
end

#In the index return JSON data representing a list of all students