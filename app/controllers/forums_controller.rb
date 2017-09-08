class ForumsController < ApplicationController

  def index
    @forums = Forum.all
  end

  def show
    @posts = Post.where(forum_id: params[:id])
    @forum = Forum.find(params[:id])
  end

  def create
    forum = params['forum']
    Forum.create(subfeddit: forum['subfeddit'])
    redirect_to forums_path
  end

  def destroy
    Forum.destroy(params['id'])
    redirect_to forums_path
  end

end
