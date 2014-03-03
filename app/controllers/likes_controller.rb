class LikesController < ApplicationController
	before_action :set_pick

  def create
    event={:event_type=>'like', :record_id=>@pick.id, :record_type=>'Like photo'}
    History.track_event(current_user.id, event)
    like = @pick.pic_likes.create(:user_id=>current_user.id,:pick_id=>@pick.id)
    redirect_to pick_path(@pick)
  end

  def destroy
    event={:event_type=>'like', :record_id=>@pick.id, :record_type=>'Unlike photo'}
    History.track_event(current_user.id, event)
    like = @pick.pic_likes.where(:id=>params[:id],:user_id=>current_user.id.to_s).first
    like.destroy
    redirect_to pick_path(@pick)
  end

private
  
  def set_pick
    @pick = Pick.find(params[:pick_id])
  end
  
end