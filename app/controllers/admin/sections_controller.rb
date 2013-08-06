class Admin::SectionsController < AdminController
  before_filter do
    @article = Article.friendly.find(params[:article_id])
  end

  def index  
    @sections = Section.where article_id: @article.id
  end

  def new
    @section = Section.new article_id: @article.id 
  end

  def create
    if @section = Section.create(section_parameters)
      redirect_to admin_article_sections_path(@article), notice: "Section ajoutée"
    else
      redirect_to edit_admin_article_section_path(@article, @section), error: "Erreur lors de l'ajout"
    end
  end

  def edit
    @section = Section.find(params[:id])
  end

  def update   
    @section = Section.find(params[:id])
    if @section.update_attributes!(section_parameters)
      redirect_to admin_article_sections_path(@article), notice: "Section modifiée"
    else
      redirect_to edit_admin_article_section_path(@article, @section), error: "Erreur lors de la modification"
    end
  end

  def destroy
    @section = Section.find(params[:id])
    if @section.destroy
      redirect_to admin_article_sections_path(@section), notice: "Section supprimée"
    else
      redirect_to admin_article_sections_path(@section), error: "Problème avec la suppression de la section"
    end
  end
  
  private
  
  def section_parameters
    params.require(:section).permit(:body, :picture, :legend, :article_id)
  end
end
