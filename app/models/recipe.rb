class Recipe
  include HTTParty

  default_params key: ENV["FOOD2FORK_KEY"]
  hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'
  base_uri "http://#{hostport}/api"
  format :json

  def self.for term
    get("/search", query: {q: term})["recipes"]
  end
  def self.get_recipe recipe_id
    get("/get", query: {rId: recipe_id})["recipe"]
  end

end