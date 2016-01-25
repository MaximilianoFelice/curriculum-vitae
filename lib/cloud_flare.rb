require 'rest-client'

class CloudFlare
  def self.app_zone
    # For if sometime we need to ask: "https://api.cloudflare.com/client/v4/zones/?name=maximilianofelice.com"
    "1a16c506453c17e24e9381eae5e23b16"
  end

  def self.dev_mode?
    res = get "#{base_url}/zones/#{app_zone}/settings/development_mode"
    res['result']['value'] != 'off'
  end  

  private
  def self.get route
    JSON.parse(RestClient.get(route, {"X-Auth-Key" => Rails.application.secrets.cloudflare['key'], "X-Auth-Email" => "maximilianofelice@gmail.com"}))
  end

  def self.base_url
    "https://api.cloudflare.com/client/v4/"
  end
end