class UsersController < ApplicationController
  def index
  	@users = User.all
  	@posts = Post.all
  end

  # def edit
  # 	@post = Post.find(params[:id])
  # end

  # def update
  #   @post = Post.find(params[:id])

  #   if @post.update(post_params)
  #     redirect_to user_url
  #   else
  #     render 'edit'
  #   end
  # end

  def destroy
  	@post = Post.destroy(params[:id])
    redirect_to users_path
  end
end
