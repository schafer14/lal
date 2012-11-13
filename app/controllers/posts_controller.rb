class PostsController < ApplicationController

  def index
    @posts = Post.all
    respond_to do |format|
      format.html #index.html.erb
      format.rss # index.rss.builder
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])

    if @post.save
      redirect_to :action => :show, :id => @post.id
    else
      render 'new'
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update_attributes(params[:post])
      redirect_to :action => :show, :id => @post.id
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy(params[:id])

    respond_to do |format|
      format.html {redirect_to posts_url}
      format.json{head :no_content}
    end

    redirect_to :action => :index
  end
end
