class StudentsController < ApplicationController
  def new
  end

  def show
    @student = Student.last
  end

  def create
    Student.create(name: params[:name], age: params[:age].to_i)
    redirect_to students_show_path, notice: 'Estudiante ingresado con éxito.'
  end
end
