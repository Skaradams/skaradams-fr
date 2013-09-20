class HomeController < ApplicationController
  meta_tags_from :article
  
  def index
    @categories = Category.all
    filters = params['categories'].split(',') rescue nil
    @articles = Article.where(published: true)
    if filters.present?
      @articles = @articles.includes(:category).where('categories.slug in (?)', filters)
    end
    @articles = @articles.page params[:page]
  end

  def about
  end

  def contact
    @message = Message.new
  end

  def send_contact
    @message = Message.new message_parameters
    if ContactMailer.send_message(@message).deliver
      redirect_to root_path, notice: 'Votre message a bien été envoyé'
    else
      redirect_to root_path, error: "Erreur lors de l'envoi de votre message"
    end
  end

  private

  def message_parameters
    params.require(:message).permit(:name, :email, :body)
  end
end
