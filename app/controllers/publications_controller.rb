class PublicationsController < ApplicationController
  before_action :set_publication, only: [:update, :destroy]

  def index
    render json: Publication.all
  end

  def create
    publication = Publication.new(publication_params)
    publication.save!
    render json: publication, only: [:id, :version]
  rescue
    render json: publication.errors, status: :unprocessable_entity
  end

  def update
    @publication.update!(publication_params)
    render json: @publication, only: [:id, :version]
  rescue
    render json: @publication.errors, status: :unprocessable_entity
  end

  def destroy
    @publication.destroy
    render json: "OK"
  end
  
  def show
    @publication = Publication.find(params[:id])
    render json: @publication
  end
  
private
  def set_publication
    @publication = Publication.find(params[:id])
  end

  def publication_params
    params.require(:publication).permit(:version, :title, :subtitle, :address, :type_of_collecting, :latitude, :longitude, :starting_date, :ending_date, :contact_info, :is_on_air, :active_device_dev_uuid, :photo_url)
  end
end
