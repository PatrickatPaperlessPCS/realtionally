class AdminConsoleController < ApplicationController
  before_action :authenticate_user!
  def list
  	if current_user.admin == true
  	@users = User.all
  else
  	redirect_to pages_dashboard_path, alert: 'You do not have adminstrative access on your account'
  end
  end
end
