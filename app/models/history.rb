class History < ActiveRecord::Base
	belongs_to :pick
	belongs_to :user
	serialize :data

	def self.track_event(user_id, data)
		event=data.delete(:event_type)
		History.create(:user_id=>user_id, :event_type=>event, :data=>data)
	end
	
end