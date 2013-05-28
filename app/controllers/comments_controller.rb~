class CommentsController < ApplicationController
  
  before_filter :require_user, only: [:create]
  
  def index
    @posts = Post.find(params[:post_id])
    @comments = @posts.comments
  end
  
  def show
    @post = Post.find(params[:post_id])
  end
  
  
  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end
  
  def create
    
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(params[:comment])
    @comment.user_id = session[:user_id]
    if @comment.save
       flash[:notice] = "Comment was created!"
       redirect_to post_comments_path
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
