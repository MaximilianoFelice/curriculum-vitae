require_dependency "admin/application_controller"

module Admin
  class ExpertiseEntriesController < ApplicationController
    include Godmin::Resources::ResourceController
    def edit
      @resource = ExpertiseEntry.find(params[:id])
      render 'extended/new'
    end

    def new
      render 'extended/new'
    end
  end
end
