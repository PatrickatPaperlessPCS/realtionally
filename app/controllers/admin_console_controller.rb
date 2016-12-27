class AdminConsoleController < ApplicationController
  before_action :authenticate_admin!
  def list
  	@users = User.all
  end
end
