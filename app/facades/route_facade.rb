class RouteFacade
  def self.get_current_flow(site_code)
    data = RouteService.get_current_data(site_code)

    data.map do |site|
      require 'pry'; binding.pry
    end
  end
end