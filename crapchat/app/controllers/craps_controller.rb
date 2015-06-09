class CrapsController < ApplicationController
	before_action :set_crap, only: [:show, :edit, :update, :destroy]
	def create
		
	end

	def edit
		
	end

	def destroy
		
	end

	def new
	 @crap = Crap.new	
	end

	def show
		
	end

	
	private
    def set_crap
      @crap = Crap.find(params[:id])
    end

  # Never trust parameters from the scary internet, only allow the white list through.
    def crap_params
      params.require(:crap).permit(:id, :post)
    end
end
