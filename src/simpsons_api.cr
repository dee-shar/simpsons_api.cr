require "json"
require "http/client"

class SimpsonsApi
  API_PATH = "api"
  def initialize
    @headers = HTTP::Headers{
      "Content-Type" => "application/json",
      "Accept" => "application/json",
      "User-Agent" => "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36"
    }
    uri = URI.parse("https://thesimpsonsapi.com")
    @http_client = HTTP::Client.new(uri)
  end

  def get_character(character_id : Int32) : JSON::Any
    JSON.parse(
      @http_client.get("/#{API_PATH}/characters/#{character_id}", headers: @headers).body)
  end

  def get_characters() : JSON::Any
    JSON.parse(
      @http_client.get("/#{API_PATH}/characters", headers: @headers).body)
  end

  
  def get_episode(episode_id : Int32) : JSON::Any
    JSON.parse(
      @http_client.get("/#{API_PATH}/episodes/#{episode_id}", headers: @headers).body)
  end

  def get_episodes() : JSON::Any
    JSON.parse(
      @http_client.get("/#{API_PATH}/episodes", headers: @headers).body)
  end


  def get_location(location_id : Int32) : JSON::Any
    JSON.parse(
      @http_client.get("/#{API_PATH}/locations/#{character_id}", headers: @headers).body)
  end

  def get_locations() : JSON::Any
    JSON.parse(
      @http_client.get("/#{API_PATH}/locations", headers: @headers).body)
  end
end
