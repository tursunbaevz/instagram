class UsersController < ApplicationController
  def index
  	@users = User.all
  	@posts = Post.all
  end

  def destroy
  	@post = Post.destroy(params[:id])
    redirect_to users_path
  end

  def like
    @post = Post.find(params[:id])
	  if @post.liked_by current_user
	      respond_to do |format|
	        format.html { redirect_to :back }
	        format.js
	      end
	    end 
	end
end
  