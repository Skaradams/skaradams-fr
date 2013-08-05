class HomeController < ApplicationController
  def index
    @categories = Category.all
    filters = params['categories'].split(',') rescue nil
    @articles = Article.published
    if filters.present?
      @articles = @articles.includes(:category).where('categories.slug in (?)', filters)
    end
  end
end
