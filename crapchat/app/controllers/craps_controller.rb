class CrapsController < ApplicationController
    before_action :set_crap, only: [:show, :edit, :update, :destroy]
    def create
        @crap = Crap.new(crap_params)
        respond_to do |format|
            if @crap.save
                format.html {redirect_to @crap, notice: "Solid Crap"}
            else 
                format.html {render :new}
            end    
        end
    end

    def edit
        
    end

    def destroy
        Crap.find(params[:id]).destroy
        respond_to do |format|
            format.html{redirect_to craps_url}
        end    
    end

    def new
     @crap = Crap.new    
    end

    def show
        @crap = Crap.find(params[:id])
    end

    def index
        @craps = Crap.all
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
