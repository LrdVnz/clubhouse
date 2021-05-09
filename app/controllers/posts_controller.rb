class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def show 
   @post = Post.all
  end

  def new
   @post = Post.new 
  end

  def create
   @post = current_user.posts.build(post_params)

   if @post.save
     redirect_to root_path 
   else
     flash[:notice] = @post.errors.full_messages
     render :new 
   end
  end

  private

  def post_params 
   params.require(:post).permit(:body)
  end
end
