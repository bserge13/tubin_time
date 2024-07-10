class RouteFacade
  def self.get_current_flow(site_code)
    data = RouteService.get_current_data(site_code)

    data[:value][:timeSeries].each do |series|
      if series[:variable][:variableCode].first[:value] == "00060" || series[:variable][:variableDescription] == "Discharge, cubic feet per second"
        return series[:values].first[:value].first[:value].to_f
      end
    end
  end
end