class StudentsController < ApplicationController
  def new
  end

  def show
    @student = Student.last
  end

  def create
    if params[:name].present? && params[:age].present?
      Student.create(name: params[:name], age: params[:age].to_i)
      redirect_to students_show_path, notice: 'Estudiante ingresado con éxito.'
    else
      redirect_to students_new_path, alert: 'Debes completar ambos campos!'
    end
  end
end
