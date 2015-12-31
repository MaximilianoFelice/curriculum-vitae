require_dependency "admin/application_controller"

module Admin
  class CategoriesController < ApplicationController
    include Godmin::Resources::ResourceController
    def edit
      @resource = Category.find(params[:id])
      render 'extended/new'
    end

    def new
      render 'extended/new'
    end
  end
end
