class Admin::BlogsController < ApplicationController
  def index
    @blogs = Blog.order('blogs.position ASC')
  end
  
  def new
    @blog = Blog.new
  end

  def create
    if @blog = Blog.create(blog_parameters)
      redirect_to admin_blogs_path, notice: "Blog ajouté"
    else
      redirect_to edit_admin_blog_path(@blog), error: "Erreur lors de l'ajout"
    end
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    @blog = Blog.find(params[:id])
    
    if @blog.update_attributes!(blog_parameters)
      redirect_to admin_blogs_path, notice: "Blog modifié"
    else
      redirect_to edit_admin_blog_path(@blog), error: "Erreur lors de la modification"
    end
  end

  def destroy
    @blog = Blog.find(params[:id])
    if @blog.destroy
      redirect_to admin_blogs_path, notice: "Blog supprimé"
    else
      redirect_to admin_blogs_path, error: "Problème avec la suppression de l'blog"
    end
  end
  
  private
  
  def blog_parameters
    params.require(:blog).permit(:name, :link, :position)
  end
end
