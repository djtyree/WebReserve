class Building < ActiveRecord::Base
  attr_accessible :location, :name
  has_many :conference_rooms
end
