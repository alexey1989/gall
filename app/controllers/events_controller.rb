class EventsController < ApplicationController
	
	def index
	  @users=User.all
	end

	def show
	  @events=History.where(:user_id=>params[:id], :event_type=>params[:event_type]).preload(:user).order('created_at DESC')
	
	end 
end
