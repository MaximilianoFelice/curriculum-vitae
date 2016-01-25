class ApplicationController < ActionController::Base
  # MixPanel Tracking info #
  include Mengpaneel::Controller

  # Setup MixPanel
  before_filter :setup_mixpanel

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def is_dev_mode?
    !Rails.env.production? || CloudFlare.dev_mode?
  end

  private
  def setup_mixpanel
    session[:user] = SecureRandom.hex unless session[:user]
    mengpaneel.setup do
      mixpanel.identify(session[:user])
    end
  end
end
