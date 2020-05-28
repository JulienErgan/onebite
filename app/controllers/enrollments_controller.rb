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
    @course = Course.find(params[:course_id])
    @enrollment = Enrollment.new
    authorize @enrollment
  end

  def create
    # creation of enrollment
    @course = Course.find(params[:course_id])
    @enrollment = Enrollment.new(enrollment_params)
    @enrollment.course = @course
    @enrollment.completion_status = 0
    @enrollment.user = current_user
    authorize @enrollment
    # creation of chapters
    @date = params[:start_date]
    @time = params[:time_of_day]
    # date timeからdatetimeを作れればその変数をchapter modelに渡せる
    # raise here to check
    # チャプターにハードコードでstart_time書いてチャプターのビュー作ればカレンダー表示できるかな
    #　もしくはもんてローゼでデイリーセット各時刻インスタンスをstart_timeでセットしてチャプターに渡す
    if @enrollment.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  private

  def enrollment_params
    params.require(:enrollment).permit(:course_id, :user_id, :start_date, :completed_at, :duration, :time_of_day, :completion_status)
  end
end
