class PostsController < ApplicationController
   skip_before_action :verify_authenticity_token
   
  def new
  	@post = Post.new
    @comment = Comment.new(post_id: params[:post_id])
  end

  def index
  	@posts = Post.all.order(created_at: :DESC)
    @comment = Comment.new
    @post = Post.new[:post_id]  
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


    def destroy
      @post = Post.find_by(params[:id])
        @comment = Comment.find_by(params[:id])
        @comment.destroy
        redirect_to root_path
    end

  	
  
  private
  def post_params
    params.require(:post).permit(:description, :image, :user_id, :comment_id)
  end
end
