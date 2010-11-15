class PostsController < ApplicationController

  before_filter :find_post, :except => 'index'
  def index
    @posts = Post.all
  end


  def show
  end
  
  private 
  
  def find_post
    begin
      @post = Post.find params[:id]
    rescue ActiveRecord::RecordNotFound => e
      flash[:error] = "This Post not exists"
      redirect_to :action => :index
    end
  end
end
