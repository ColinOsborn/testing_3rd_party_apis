class SunlightService

  def initialize
    @_conn = Faraday.new(url: "https://congress.api.sunlightfoundation.com") do |faraday|
      faraday.params["apikey"] = ENV["sunlight_api_key"]
      faraday.adapter  Faraday.default_adapter
    end
  end

  def legislators(params)
    response = conn.get("/legislators", params)
    JSON.parse(response.body, symbolize_names: true)[:results]
  end

  private

  def conn
    @_conn
  end
end
