class PicksController < ApplicationController
  before_filter :authenticate_user!

  def index
    @picks = Pick.order('likes DESC, id DESC').page(params[:page]).per(5)
  end

  def show
    has_attached_file :avatar,
    :storage => :dropbox,
    :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
  end

end
