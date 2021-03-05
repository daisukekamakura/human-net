class GroupsController < ApplicationController
  def index
    @student = Student.all
  end
  def show
  end
end
