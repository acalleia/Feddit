class CommentsController < ApplicationController

  def create
    @forum = Forum.find(params[:forum_id])
    @post = Post.find(params[:post_id])
    comment = params['comment']
    Comment.create!(body: comment['body'],
                post: @post)
                
    redirect_to forum_post_path(@forum, @post)
  end

  def destroy
    @forum = Forum.find(params[:forum_id])
    @post = Post.find(params[:post_id])
    Comment.destroy(params['id'])
    redirect_to forum_post_path(@forum, @post)
  end

  def update
    @forum = Forum.find(params[:forum_id])
    @post = Post.find(params[:post_id])
    comment = params['comment']
    Comment.update(body: comment['body'],
                post: @post)
                
    redirect_to forum_post_path(@forum, @post)
  end

end
