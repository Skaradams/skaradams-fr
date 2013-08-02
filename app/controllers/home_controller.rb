class HomeController < ApplicationController
  def index
    @categories = Category.all
    @articles = Article.published
  end
end
