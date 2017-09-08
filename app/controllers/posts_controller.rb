class PostsController < ApplicationController
  def new 
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
end
