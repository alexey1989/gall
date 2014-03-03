class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  protect_from_forgery with: :exception
  before_filter :fetch_categories , :if => -> { request.get? }
  
  private

  def fetch_categories
  	@categories = Category.all
  end

  def after_sign_in_path_for(resource)
    if resource == :user
      event={:event_type=>'signin'}
      History.track_event(current_user.id,event)
      categories_path
    else
      super
    end
  end

  def after_sign_out_path_for(resource)
    if resource == :user
      event={:event_type=>'logout'}
      History.track_event(current_user.id,event)
      categories_path
    else
      super
    end
  end
end
