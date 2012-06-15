class StaticPagesController < ApplicationController
  def index
  end

  def home
    @projects = Project.all
    @posts = Post.all
  end
end
