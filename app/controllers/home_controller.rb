class HomeController < ApplicationController
  def index
    @user = User.first
  end

  def profile
    @user = User.first
  end
end
