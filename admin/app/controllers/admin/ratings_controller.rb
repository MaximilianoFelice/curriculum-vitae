require_dependency "admin/application_controller"

module Admin
  class RatingsController < ApplicationController
    include Godmin::Resources::ResourceController
  end
end
