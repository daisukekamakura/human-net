class StudentsController < ApplicationController
  def new
    @student = Student.new
  end
  def create
    @student = Student.new(student_params)
    if @student.valid?
      @student.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    if @student.update(student_params)
      redirect_to student_path(@student) 
    else
      render :edit        
    end
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to root_path(@student) 
  end

  private
  def student_params
    params.require(:student).permit(:name,:memo).merge(user_id: current_user.id)
  end

end
