class BlogsController < ApplicationController
  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    @blog.save
    redirect_to root_path,  notice: 'Successfully created'
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    @blog = Blog.find(params[:id])
    @blog.update(blog_params)
    redirect_to root_path
  end

  def index
    @blogs = Blog.all.order('created_at DESC')
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :content)
  end
end
