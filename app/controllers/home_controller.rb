class HomeController < ApplicationController
  def index
  	@user = User.find(2)
  end
end
