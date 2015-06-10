class StaticPagesController < ApplicationController
  def home
    if logged_in?
    @crap = current_user.craps.build 
    @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def about
  end

  def contact
  end

  def links
  end

  def help
  end
end
