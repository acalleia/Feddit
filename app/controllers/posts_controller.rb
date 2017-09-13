class PostsController < ApplicationController
  
  def new 
  end

  def show
    @forum = Forum.find(params[:forum_id])
    @posts = Post.find(params[:id])
    @comments = Comment.where(post_id: params[:id])
  end

  def create
    @forum = Forum.find(params[:forum_id])
    post = params['post']
    Post.create!(title: post['title'],
                body: post['body'],
                forum: @forum)
                
    redirect_to forum_path(@forum)
  end

  def destroy
    Post.destroy(params['forum_id'])
    redirect_to forum_path
  end

  def update
    @post = Post.find(params[:id])
    @forum = Forum.find(params[:forum_id])
    post = params['post']
    Post.update(body: post['body'],
                forum: @forum)
                
    redirect_to forum_post_path(@forum, @post)
  end

end
