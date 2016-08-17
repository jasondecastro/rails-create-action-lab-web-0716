class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    @data = {first_name: params[:first_name], last_name: params[:last_name]}
    @student = Student.create(@data)

    redirect_to student_path(@student.id)
  end

end
