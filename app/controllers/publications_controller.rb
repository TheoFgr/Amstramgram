class PublicationsController < ApplicationController
  def index
    @publications = Publication.all
  end



  def new
    @publication = Publication.new
  end

  def create
    @publication = Publication.new(publication_params)
    if @publication.save!
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def publication_params
    params.require(:publication).permit(:picture, :content, :number_of_like, photo: [])
  end
end
