class PagesController < ApplicationController
	before_action :authenticate_user!, :except => [:welcome]
  def welcome

  	if admin_signed_in? 
  		redirect_to admin_console_list_path
  	end
  end

  def user_list
  	@users = Users.all
  end
end
