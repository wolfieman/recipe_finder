class Recipe
  include HTTParty
  
  api_key = ENV['FOOD2FORK_KEY']
  hostport  = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'

  base_uri  "http://#{hostport}/api"
  default_params key: api_key
  format :json

  def self.for keyword
  	puts keyword
    get("/search", query: { q: keyword})["recipes"]
  end
end


