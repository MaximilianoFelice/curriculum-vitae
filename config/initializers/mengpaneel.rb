Mengpaneel.configure do |config|
  key = Rails.application.secrets.mixpanel
  config.token=key['key'] if key.present?
end