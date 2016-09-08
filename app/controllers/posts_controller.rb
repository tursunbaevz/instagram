class PostsController < ApplicationController
  def new
  	@post = Post.new
    @comment = Comment.new(post_id: params[:post_id])
  end

  def index
  	@posts = Post.all
    @comments = Comment.all
    
  end

  def create
  	@post = Post.create(post_params)
  	if @post.save	 
  	redirect_to root_url
  	else	 
  		render :new
  	end
  	
  end

  def post_params
    params.require(:post).permit(:description, :image, :user_id, :comment_id)
  end
end
