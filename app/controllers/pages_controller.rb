class PagesController < ApplicationController

	before_action :authenticate_user!, :except => [:welcome]
  def welcome
  end

  def dashboard
  	if current_user.paid == nil
  		redirect_to new_charge_path
  	end

  	# if current_user.admin == true 
  	# 	redirect_to admin_console_list_path
  	# end
  end

  def user_list
  	unless 
  	 current_user.admin == true
  		redirect_to pages_dashboard_path
  	else	
  	@users = Users.all
  	end
  end
end
