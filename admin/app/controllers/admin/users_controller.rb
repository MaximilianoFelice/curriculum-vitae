require_dependency "admin/application_controller"

module Admin
  class UsersController < ApplicationController
    include Godmin::Resources::ResourceController

    def edit
      @resource = User.find(params[:id])
      render 'users/new'
    end

    def new
      render 'users/new'
    end
  end
end
