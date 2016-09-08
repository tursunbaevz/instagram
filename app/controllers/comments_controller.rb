class CommentsController < ApplicationController
  
	  def new
	  	@posts = Post.all
	  	@comment = Comment.new
	  end


	  def destroy 
	  	@comment = Comment.destroy(params[:id])
	  	redirect_to root_url
	  end

	  def create
	  	@post = Post.find(params[:comment][:post_id])
	  	@comment = @post.comments.create(comment_params)
	  	@comment.user_id = current_user.id
	  	if @comment.save
	  		redirect_to root_url
	  	else 
	  		render 'new'
	  end
	end
	  


	private

	def comment_params
		params.require(:comment).permit(:content, :post_id, :user_id)
	end

end
