class BlogsController < ApplicationController
  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    @blog.save
    redirect_to root_path,  notice: 'Successfully created'
  end

  def index
    @blogs = Blog.all.order('created_at DESC')
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :content)
  end
end
