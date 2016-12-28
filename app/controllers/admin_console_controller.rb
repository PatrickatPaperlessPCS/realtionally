class AdminConsoleController < ApplicationController
  before_action :authenticate_user!
  def list
  	@users = User.all
  end
end
