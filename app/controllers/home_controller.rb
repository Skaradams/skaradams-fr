class HomeController < ApplicationController
  def index
    @categories = Category.all
    @articles = Article.published
    p @articles
  end
end
