require_dependency "admin/application_controller"

module Admin
  class TimelineEntriesController < ApplicationController
    include Godmin::Resources::ResourceController
    def edit
      @resource = TimelineEntry.find(params[:id])
      render 'extended/new'
    end

    def new
      render 'extended/new'
    end
  end
end
