class PostsController < ApplicationController
  
  before_filter :require_user, only: [:new, :create]
  
  def index
    @posts = Post.all
  end
  
  def show
    @post = Post.find(params[:id])
    @comment = @post.comments.new(params[:post_id])
  end
  
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(params[:post])
    @post.user_id = 1
    if @post.save
       flash[:notice] = "Post was created!"
       redirect_to posts_path
    else
      render :new
    end
    
  end
  
  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(params[:post])
      flash[:notice] = "Post was updated"
      redirect_to posts_path(@post)
    else #validation
      render :edit
    end
    
  end
  
  
end
