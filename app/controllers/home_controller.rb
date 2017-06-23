class HomeController < ApplicationController
  def index
    @users = User.all
  end

  def list
    @users = User.all
  end

  def like
    @likes = Like.all
  end
end
