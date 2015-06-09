class CommentsController < ApplicationController

	before_action :set_comment, only: [:destroy, :edit]

  def create
    comment = Post.find(params[:post_id]).comments.create(comment_params)
    render json: comment
  end

  def edit
    render json: @comment
  end

  def update
    @comment.update_attributes(comment_params)
  end

  def destroy
  	@comment.destroy
  	render json: @comment
  end

  private

		def set_comment
			@comment = Comment.find(params[:id])
		end  

	  def comment_params
	    params.require(:comment).permit(:body)
	  end
end
