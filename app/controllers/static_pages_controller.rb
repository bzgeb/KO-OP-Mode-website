class StaticPagesController < ApplicationController
  def index
  end

  def home
    @projects = Project.all
  end
end
