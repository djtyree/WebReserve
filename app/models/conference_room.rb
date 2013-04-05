class ConferenceRoom < ActiveRecord::Base
  attr_accessible :building_id, :floor, :max, :name, :phone, :room, :tv, :vtc, :whiteboard
  belongs_to :building
end
