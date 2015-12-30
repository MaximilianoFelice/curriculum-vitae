require 'rest-client'

class XKCD
  def self.url
    "http://xkcd.com"
  end

  def self.last_comic
    self.new get_comic_from("http://xkcd.com/info.0.json")
  end

  def self.random_comic
    random = rand(total_comics) + 1
    self.new get_comic_from("http://xkcd.com/#{random}/info.0.json")
  end

  def initialize json_info
    @comic = json_info
  end

  def method_missing sym, *args, &block
    return super unless self.respond_to?(sym, *args, &block)
    @comic[sym.to_s]
  end

  def respond_to? sym, *args, &block
    return super unless @comic && @comic[sym.to_s] && args.empty? && !block_given?
    true
  end

  private

  def self.total_comics
    get_total_comics
  end

  def self.get_total_comics
    last_comic.num
  end

  def self.get_comic_from url
    JSON.parse(RestClient.get url, accept: :json)
  end
end