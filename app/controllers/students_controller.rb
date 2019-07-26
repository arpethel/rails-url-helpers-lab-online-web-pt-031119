class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @students = Student.all
    @student = Student.find(params[:id])
    # @active = Post.find(params[:id])
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
