class RouteService 
  def self.conn
    Faraday.new(url: "https://waterservices.usgs.gov/nwis/iv/") 
  end

  def self.get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_current_data(site_code)
    get_url("?format=json&sites=#{site_code}")
  end
end