class GroupsController < ApplicationController
  def index
    @student = Student.all
  end
  def show
    # @student = Student.find(params[:id])
  end
end
