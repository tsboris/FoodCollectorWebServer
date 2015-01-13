class RegisteredUserForPublicationsController < ApplicationController
  
  def create
    registered_user_for_publication = RegisteredUserForPublication.new(registered_user_for_publication_params)
    registered_user_for_publication.save!
    render json: registered_user_for_publication
  rescue
    render json: registered_user_for_publication.errors, status: :unprocessable_entity 
    #render :json => {:error => "cannot create record"}.to_json, :status => 400
  end

  def index
    render json: RegisteredUserForPublication.where( publication_id: params[:publication_id], publication_version: params[:publication_version] )
  end

private
  # Use callbacks to share common setup or constraints between actions.
  def set_registered_user_for_publication
    #@registered_user_for_publication = RegisteredUserForPublication.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def registered_user_for_publication_params
    params.require(:registered_user_for_publication).permit(:publication_id, :publication_version, :date_of_registration, :active_device_dev_uuid)
  end
end