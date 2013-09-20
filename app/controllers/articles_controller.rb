class ArticlesController < ApplicationController
  meta_tags_from :article

  def show
    @article = Article.friendly.find(params[:id])
  end
end
