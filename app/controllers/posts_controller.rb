class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  def show 
   @post = Post.all
  end

  def new
   @post = Post.new 
  end

  def create
   @post = current_user.tweets.build(user_params)

   if @post.save 
     redirect_to root_path 
   else
     render :new 
   end
  end

  private

  def post_params 
   params.require(:post).permit(:author_id, :body)
  end
end
