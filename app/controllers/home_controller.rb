class HomeController < ApplicationController
  def index
    @user = User.first.decorate
  end

  def profile
    @user = User.first.decorate
  end
end
