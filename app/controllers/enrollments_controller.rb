class EnrollmentsController < ApplicationController
  def index
    @enrollments = policy_scope(Enrollment)
    # policy scope with Pundit installed
  end

  def show
    @enrollment = Enrollment.find(params[:id])
    authorize @enrollment
  end

  def new
    @enrollment = Enrollment.new
    authorize @enrollment
  end

  def create
    @course = Course.find(params[:course_id])
    @enrollment = Enrollment.new(enrollment_params)
    @enrollment.course = @course
    @enrollment.user = user
    authorize @course
    authorize @enrollment
    raise
    if @enrollment.save
      redirect_to enrollments_path
    else
      render :new
    end
  end

  private

  def enrollment_params
    params.require(:enrollment).permit(:course_id, :user_id, :start_date, :completed_at, :duration, :time_of_day, :completion_status)
  end
end
