class TripPlan < ActiveRecord::Base
  validates :title, presence: true
end
