class CommentsController < ApplicationController
  def create
    @site = Site.find(params[:site_id])
    @comment = @site.comments.build(params[:comment])
    @comment.save
    
    redirect_to @site
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    
    redirect_to @comment.site
  end
  
end
