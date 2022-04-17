class PublicationsController < ApplicationController
  def index
    @publications = Publication.all
  end



  def new
    @publication = Publication.new
  end

  def create
    @publication = Publication.new(publication_params)
    @publication.save
  end

  private

  def publication_params
    params.require(:publication).permit(:picture, :content, :number_of_like)
  end
end
