class Route < ApplicationRecord
  validates :title, :address, :city, :state, presence: true
  validates :flow_max, :flow_min, presence: true, numericality: true

  def status
    if current_flow > flow_max
      "High"
    elsif current_flow < flow_min
      "Low"
    else
      "Safe to send, breh"
    end
  end

  def current_flow
    RouteFacade.get_current_flow(self.site_code)
  end
end
