require_dependency "admin/application_controller"

module Admin
  class UsersController < ApplicationController
    include Godmin::Resources::ResourceController

    def edit
      @resource = User.find(params[:id])
      render 'extended/new'
    end

    def new
      render 'extended/new'
    end
  end
end
