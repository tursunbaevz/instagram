class UsersController < ApplicationController
  def index
  	@users = User.all
  	@posts = Post.all
    @post = Post.new
  end

  def destroy
  	@post = Post.destroy(params[:id])
    redirect_to users_path
  end
end
