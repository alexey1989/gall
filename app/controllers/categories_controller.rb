class CategoriesController < ApplicationController
  before_filter :authenticate_user!

  def show
   category = Category.find_by(:name=>params[:id])
   event={:event_type=>'navigation', :record_id=>category.name, :record_type=>'Show category'} 
   History.track_event(current_user.id,event)
   @picks = category.picks.page(params[:page]).per(5)
  end

end
