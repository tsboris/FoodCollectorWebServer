class ActiveDevicesController < ApplicationController
  before_action :set_active_device, only: [:show, :edit,  :destroy]

  # GET /active_devices
  # GET /active_devices.json
  def index
    render json: ActiveDevice.all
  end

  # GET /active_devices/1/edit
  def edit
  end

  # POST /active_devices
  # POST /active_devices.json
  def create
    active_device = ActiveDevice.new(active_device_params)
    active_device.save!
    render json: active_device
  rescue
    render json: active_device.errors, status: :unprocessable_entity
  end

  
  def update
      active_device = ActiveDevice.find_by_dev_uuid(active_device_params[:dev_uuid])
      active_device.last_location_latitude =  active_device_params[:last_location_latitude] unless active_device_params[:last_location_latitude].blank?
      active_device.last_location_longitude = active_device_params[:last_location_longitude] unless active_device_params[:last_location_longitude].blank? 
      active_device.is_ios = active_device_params[:is_ios] unless active_device_params[:is_ios].blank? 
      active_device.remote_notification_token = active_device_params[:remote_notification_token]unless active_device_params[:remote_notification_token].blank? 
     
      active_device.save!
      render json: "OK"
  rescue
      render json: "Error"
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_active_device
      @active_device = ActiveDevice.find_by_dev_uuid(active_device_params[:dev_uuid])
    end

  # DELETE /active_devices/1
  # DELETE /active_devices/1.json
 #def destroy
  #  @active_device.destroy
 #end


    # Never trust parameters from the scary internet, only allow the white list through.
    def active_device_params
      params.require(:active_device).permit(:remote_notification_token, :is_ios, :last_location_latitude, :last_location_longitude, :dev_uuid)
    end

end
