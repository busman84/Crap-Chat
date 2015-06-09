class StaticPagesController < ApplicationController
  def home
    @craps = Crap.all
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
