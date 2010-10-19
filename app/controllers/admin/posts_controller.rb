class Admin::PostsController < ApplicationController
  before_filter :get_current_post, :only => [:show, :edit, :update, :destroy]
  
  def index
    @posts = Post.all
  end
  
  def new
      @post  = Post.new
  end
  
  def create
      @post  = Post.new(params[:post])
      if @post.save
        redirect_to admin_posts_path
      else
        render :action => :new
      end
  end
  
  def edit
      @post  = Post.find(params[:id])
  end

  def update
      if @post.update_attributes(params[:post])
        redirect_to admin_posts_path
      else
        render :action => :edit
      end
  end
  
  def show
  end
  
  def destroy
    @post.destroy
    redirect_to admin_posts_path
  end
  
  protected
    def get_current_post
      @post  = Post.find(params[:id])
    end
end
