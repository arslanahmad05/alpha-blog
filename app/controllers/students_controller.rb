class StudentsController < ApplicationController
  def index
    @student = Student.all
  end
  def new
    @student = Student.new
  end
  def edit
    @student = Student.find(params[:id])
    # render plain:params{@student}
  end
  def create
    # render plain: params[:student].inspect
    @student = Student.new(student_params)
    if @student.save
      flash[:notice] = "Student Successfully Created"
      redirect_to student_path(@student)
    else
      render 'new'

    end
  end
  def update
    @student = Student.find(params[:id])
    if @student.update(student_params)
      flash[:notice] = "Student Update Successfully"
      redirect_to student_path(@student)
    else
      render 'edit'

    end

  end
  def show
    @student = Student.find(params[:id])

  end
  def destroy
    @student = Student.find(params[:id])
    if @student.destroy
      flash[:notice] = "Student delete Successfully"
      redirect_to students_path
    else
      render 'index'
    end
  end
  private
  def student_params
    params.require(:student).permit(:name, :email, :number)
  end



end
