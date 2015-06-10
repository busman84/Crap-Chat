class CrapsController < ApplicationController
    before_action :logged_in_user, only: [:create, :destroy]
    before_action :correct_user,   only: :destroy
	
    def create
    @crap = current_user.craps.build(crap_params)
      if @crap.save
        flash[:success] = "Solid Crap!"
        redirect_to root_url
      else
        @feed_items = []
        render 'static_pages/home'
      end
    end

	def destroy
    @crap.destroy
    flash[:success] = "You just flushed your crap!"
    redirect_to request.referrer || root_url
  end

    
   private

    def crap_params
      params.require(:crap).permit(:post, :picture)
    end

    def correct_user
      @crap = current_user.craps.find_by(id: params[:id])
      redirect_to root_url if @crap.nil?
    end
end