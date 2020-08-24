class PagesController < ApplicationController
  # before_action :set_post

  def about
  end

  def home
    @posts = Post.all.order("created_at DESC").limit(10)
  end

  private

  def set_post
    @post = Post.friendly.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :body, :thumbnail, :banner)
  end
end
