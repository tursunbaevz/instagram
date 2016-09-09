class PostsController < ApplicationController
  def new
  	@post = Post.new
    @comment = Comment.new(post_id: params[:post_id])
  end

  def index
  	@posts = Post.all.order(created_at: :DESC)
    @comments = Comment.all
    
  end

  def create
  	@post = Post.create(post_params)
  	if @post.save	 
    flash[:success] = "Your post has been created!"
  	redirect_to root_url
  	else	 
      flash.now[:alert] = "Your new post couldn't be created!  Please check the form."
  		render :new
  	end
  	
  end
  private
  def post_params
    params.require(:post).permit(:description, :image, :user_id, :comment_id)
  end
end
