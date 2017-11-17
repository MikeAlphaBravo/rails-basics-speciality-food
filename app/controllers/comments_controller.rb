class CommentsController < ApplicationController

  def new
    @product = Product.find(params[:product_id])
    @comment = @product.comments.new
  end

  def create
    @product = Product.find(params[:product_id])
    @comment = @product.comments.new(comment_params)
    if @comment.save
      redirect_to product_path(@comment.product)
    else
      render :new
    end
  end

private
  def comment_params
    params.require(:comment).permit(:comment, :author)
  end
end
