class CommentsController < ApplicationController
	
  def index
    @comments=Comment.order('created_at DESC').preload(:pick, :user).page(params[:page]).per(5)
  end

  def create
    pick = Pick.find(params[:pick_id])
      event={:event_type=>'comment', :record_id=>pick.id, :record_type=>'Create comment'}
      History.track_event(current_user.id, event)
      comment = pick.comments.create(comment_params.merge(:user_id=>current_user.id))
      redirect_to pick_path(pick)
  end

  private
    def comment_params
      params.require(:comment).permit(:body)
    end
end