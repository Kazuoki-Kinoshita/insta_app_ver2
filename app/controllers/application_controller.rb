class ApplicationController < ActionController::Base
  include SessionsHelper
  before_action :loggin_required

  private
  
  def loggin_required
    redirect_to new_session_path unless current_user
  end
end
