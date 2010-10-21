class PostsController < ApplicationController
  respond_to :html
  def index
    @posts = Post.all
  end

  def show
    @posts = Post.find params[:id]
  end

  def new
    @post = Post.new
    @post.category = Category.new
  end

  def create
    category = Category.find_by_category params["post"]["category_attributes"]["name"]
    if category
      params["post"]["category_id"] = category.id
      params["post"].delete "category_attributes"
    end
    @post = Post.new params["post"]
    @post.save
    respond_with(@post)
  end
end
