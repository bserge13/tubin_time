class Route < ApplicationRecord
  validates :title, :address, :city, :state, :flow_max, :flow_min, presence: true
end