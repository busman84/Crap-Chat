class UsersController < ApplicationController
   before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :logged_in_user, only: [:index, :edit, :update]

  def new
  end

  def index
  end
  
  def show
  end

  def create
    	@user = User.new(user_params)
    	if @user.save
    		log_in @user
     		redirect_to @user
   		else
      		render 'new'
    	end
  	end

  def edit
  end

  def update
  end

  def destroy
  end

  private 
  	def set_user
      @user = User.find(params[:id])
    end

	# Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:id, :username, :email, :password, :first_name, :last_name)
    end

     # Confirms a logged-in user.
    def logged_in_user
      unless logged_in?
      	store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end

end
