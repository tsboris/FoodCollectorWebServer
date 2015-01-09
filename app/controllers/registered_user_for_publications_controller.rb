class RegisteredUserForPublicationsController < ApplicationController
  before_action :set_registered_user_for_publication, only: [ :edit, :update, :destroy]

  
  def create
    registered_user_for_publication = RegisteredUserForPublication.new(registered_user_for_publication_params)
    @registered_user_for_publication.save!
  rescue
    render json: registered_user_for_publication.errors, status: :unprocessable_entity 
  end

  def show
    render json: RegisteredUserForPublication.where( publication_id:registered_user_for_publication_params[:publication_id], publication_version: registered_user_for_publication_params[:publication_version] )
  end

private
  # Use callbacks to share common setup or constraints between actions.
  def set_registered_user_for_publication
    @registered_user_for_publication = RegisteredUserForPublication.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def registered_user_for_publication_params
    params.require(:registered_user_for_publication).permit(:publication_id, :publication_version, :date_of_registration, :active_device_dev_uuid)
  end
end