class Admin::ArticlesController < AdminController
  def index
    @articles = Article.all
  end
  
  def new
    @article = Article.new
  end

  def create
    if @article = Article.create(article_parameters)
      redirect_to admin_articles_path, notice: "Article ajouté"
    else
      redirect_to edit_admin_article_path(@article), error: "Erreur lors de l'ajout"
    end
  end

  def edit
    @article = Article.friendly.find(params[:id])
  end

  def update
    @article = Article.friendly.find(params[:id])
    
    if @article.update_attributes!(article_parameters)
      redirect_to admin_articles_path, notice: "Article modifié"
    else
      redirect_to edit_admin_article_path(@article), error: "Erreur lors de la modification"
    end
  end

  def destroy
    @article = Article.friendly.find(params[:id])
    if @article.destroy
      redirect_to admin_articles_path, notice: "Article supprimé"
    else
      redirect_to admin_articles_path, error: "Problème avec la suppression de l'article"
    end
  end
  
  private
  
  def article_parameters
    params.require(:article).permit(:title, :published, :category_id, :picture)
  end
end
