class RelationshipsController < ApplicationController
<<<<<<< HEAD
before_filter :logged_in_user

  def create
   user = User.find(params[:followed_id])
   current_user.follow(user)
   respond_to do |format|
     format.html { redirect_to @user }
     format.js
   end
 end

 def destroy
   user = Relationship.find(params[:id]).followed
   current_user.unfollow(user)
   respond_to do |format|
     format.html { redirect_to @user }
     format.js
   end
 end
end
=======
  before_action :logged_in_user

  def create
    user = User.find(params[:followed_id])
    current_user.follow(user)
    redirect_to user
  end

  def destroy
    user = Relationship.find(params[:id]).followed
    current_user.unfollow(user)
    redirect_to user
  end
end
>>>>>>> 566092c7e3f4c5c7786e43ea01c7934333535730
