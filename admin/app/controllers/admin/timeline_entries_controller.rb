require_dependency "admin/application_controller"

module Admin
  class TimelineEntriesController < ApplicationController
    include Godmin::Resources::ResourceController
  end
end
