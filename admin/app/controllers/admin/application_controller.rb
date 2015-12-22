module Admin
  class ApplicationController < ActionController::Base
    http_basic_authenticate_with name: Rails.application.secrets.godmin['user'], password: Rails.application.secrets.godmin['pass']

    include Godmin::ApplicationController
  end
end


module Godmin
  module Resources
    module ResourceController
      private
      def redirect_after_create
        resource_class.model_name.route_key.to_sym
      end
    end
  end
end