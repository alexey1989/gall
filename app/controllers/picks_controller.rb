class PicksController < ApplicationController
  before_filter :authenticate_user!

  def index
    @picks = Pick.order('likes DESC, id DESC').page(params[:page]).per(5)
  end

  def show
    @pick = Pick.find(params[:id])
    event={:event_type=>'navigation', :record_id=>@pick.id, :record_type=>'Show picture'}
    History.track_event(current_user.id,event)
    @like=Like.where(:pick_id=>@pick, :user_id=>current_user.id.to_s).first
  end

end
