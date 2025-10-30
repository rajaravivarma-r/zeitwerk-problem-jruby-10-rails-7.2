class PostsController < ApplicationController
  def index
    @posts = Post.all.includes(:author)
  end
end
