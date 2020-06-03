class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    authorize @user
  end

  def scrape_duolingo
    # define routes to that controller action
    # need a button on view which will trigger that route
    # run the scraping inside of that controller action
    # first use redirect to view
    # lastly try to render to the view using AJAX (tricky part)
  end

  def index
    if params[:query].present?
      @users = policy_scope(User).where(name: params[:query])
    else
      @users = policy_scope(User)
    end
    # authorisation error - https://github.com/varvet/pundit#ensuring-policies-and-scopes-are-used
    # see example from courses_controller.rb
  end

  # method for current_user to follow another user
  def follow
    @user = User.find(params[:id])
    authorize @user
    current_user.favorite(@user)
    redirect_to request.referrer
  end

  # method for current_user to unfollow another user
  def unfollow
    @user = User.find(params[:id])
    authorize @user
    current_user.unfavorite(@user)
    #raise

    redirect_to request.referrer
  end

   # method for current_user to see the list of other users he/she is following
  def following
    current_user.all_favorites
  end

  # method for current_user to see the list of other users he/she is being followed by
  def followers
    current_user.all_favorited
  end

  private

  # WARNING - DO NOT USE this commented out code please - I wish to keep it purely for future reference (Julien)
  # def get_enrollment_stats
  #   # this method loads stats for all the enrollments inside of @stats
  #   @stats = {}
  #   # get all the enrollments with current_user.enrollments
  #   current_user_enrollments = current_user.enrollments  # returns an array of enrollment instances
  #   # iterate over that array of enrollments
  #   current_user_enrollments.map do |enrollment|
  #     # 1 - check which platform each enrollment is for
  #     # 2 - use relevant scraper to get that structured data for that enrollment
  #     #  - need to specify the platform name to able to render the correct card in the view with the conditional statement (e.g. stat.platform)
  #     case enrollment.course.platform.name
  #     # julien = User.find(7)
  #     # julien.enrollments.first.course.platform.name returns "Codecademy"
  #     when 'Duolingo'
  #       # julien.enrollments.first.completion_status returns 30
  #       # duolingo_scraped_data is an array of hashes like  [{:language=>"Spanish", :xp_points=>"7037"}, {:language=>"Korean", :xp_points=>"4770"}, ...]
  #       @stats[:duolingo] = DuolingoScraper.new(@user).scrape
  #       # { duolingo:[{:language=>"Spanish", :xp_points=>"7037"}, {:language=>"Korean", :xp_points=>"4770"}, ...] }
  #     end
  #   end
  #   # 3 - push that data into @stats
  #   return @stats
  # end
end
