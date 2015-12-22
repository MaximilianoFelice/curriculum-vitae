module Admin
  class ApplicationController < ActionController::Base
    http_basic_authenticate_with name: Rails.application.secrets.godmin['user'], password: Rails.application.secrets.godmin['pass']

    include Godmin::ApplicationController
  end
end
