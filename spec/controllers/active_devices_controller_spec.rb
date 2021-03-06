# require 'spec_helper'

# # This spec was generated by rspec-rails when you ran the scaffold generator.
# # It demonstrates how one might use RSpec to specify the controller code that
# # was generated by Rails when you ran the scaffold generator.
# #
# # It assumes that the implementation code is generated by the rails scaffold
# # generator.  If you are using any extension libraries to generate different
# # controller code, this generated spec may or may not pass.
# #
# # It only uses APIs available in rails and/or rspec-rails.  There are a number
# # of tools you can use to make these specs even more expressive, but we're
# # sticking to rails and rspec-rails APIs to keep things simple and stable.
# #
# # Compared to earlier versions of this generator, there is very limited use of
# # stubs and message expectations in this spec.  Stubs are only used when there
# # is no simpler way to get a handle on the object needed for the example.
# # Message expectations are only used when there is no simpler way to specify
# # that an instance is receiving a specific message.

# describe ActiveDevicesController do

#   # This should return the minimal set of attributes required to create a valid
#   # ActiveDevice. As you add validations to ActiveDevice, be sure to
#   # adjust the attributes here as well.
#   let(:valid_attributes) { { "remote_notification_token" => "MyString" } }

#   # This should return the minimal set of values that should be in the session
#   # in order to pass any filters (e.g. authentication) defined in
#   # ActiveDevicesController. Be sure to keep this updated too.
#   let(:valid_session) { {} }

#   describe "GET index" do
#     it "assigns all active_devices as @active_devices" do
#       active_device = ActiveDevice.create! valid_attributes
#       get :index, {}, valid_session
#       assigns(:active_devices).should eq([active_device])
#     end
#   end

#   describe "GET show" do
#     it "assigns the requested active_device as @active_device" do
#       active_device = ActiveDevice.create! valid_attributes
#       get :show, {:id => active_device.to_param}, valid_session
#       assigns(:active_device).should eq(active_device)
#     end
#   end

#   describe "GET new" do
#     it "assigns a new active_device as @active_device" do
#       get :new, {}, valid_session
#       assigns(:active_device).should be_a_new(ActiveDevice)
#     end
#   end

#   describe "GET edit" do
#     it "assigns the requested active_device as @active_device" do
#       active_device = ActiveDevice.create! valid_attributes
#       get :edit, {:id => active_device.to_param}, valid_session
#       assigns(:active_device).should eq(active_device)
#     end
#   end

#   describe "POST create" do
#     describe "with valid params" do
#       it "creates a new ActiveDevice" do
#         expect {
#           post :create, {:active_device => valid_attributes}, valid_session
#         }.to change(ActiveDevice, :count).by(1)
#       end

#       it "assigns a newly created active_device as @active_device" do
#         post :create, {:active_device => valid_attributes}, valid_session
#         assigns(:active_device).should be_a(ActiveDevice)
#         assigns(:active_device).should be_persisted
#       end

#       it "redirects to the created active_device" do
#         post :create, {:active_device => valid_attributes}, valid_session
#         response.should redirect_to(ActiveDevice.last)
#       end
#     end

#     describe "with invalid params" do
#       it "assigns a newly created but unsaved active_device as @active_device" do
#         # Trigger the behavior that occurs when invalid params are submitted
#         ActiveDevice.any_instance.stub(:save).and_return(false)
#         post :create, {:active_device => { "remote_notification_token" => "invalid value" }}, valid_session
#         assigns(:active_device).should be_a_new(ActiveDevice)
#       end

#       it "re-renders the 'new' template" do
#         # Trigger the behavior that occurs when invalid params are submitted
#         ActiveDevice.any_instance.stub(:save).and_return(false)
#         post :create, {:active_device => { "remote_notification_token" => "invalid value" }}, valid_session
#         response.should render_template("new")
#       end
#     end
#   end

#   describe "PUT update" do
#     describe "with valid params" do
#       it "updates the requested active_device" do
#         active_device = ActiveDevice.create! valid_attributes
#         # Assuming there are no other active_devices in the database, this
#         # specifies that the ActiveDevice created on the previous line
#         # receives the :update_attributes message with whatever params are
#         # submitted in the request.
#         ActiveDevice.any_instance.should_receive(:update).with({ "remote_notification_token" => "MyString" })
#         put :update, {:id => active_device.to_param, :active_device => { "remote_notification_token" => "MyString" }}, valid_session
#       end

#       it "assigns the requested active_device as @active_device" do
#         active_device = ActiveDevice.create! valid_attributes
#         put :update, {:id => active_device.to_param, :active_device => valid_attributes}, valid_session
#         assigns(:active_device).should eq(active_device)
#       end

#       it "redirects to the active_device" do
#         active_device = ActiveDevice.create! valid_attributes
#         put :update, {:id => active_device.to_param, :active_device => valid_attributes}, valid_session
#         response.should redirect_to(active_device)
#       end
#     end

#     describe "with invalid params" do
#       it "assigns the active_device as @active_device" do
#         active_device = ActiveDevice.create! valid_attributes
#         # Trigger the behavior that occurs when invalid params are submitted
#         ActiveDevice.any_instance.stub(:save).and_return(false)
#         put :update, {:id => active_device.to_param, :active_device => { "remote_notification_token" => "invalid value" }}, valid_session
#         assigns(:active_device).should eq(active_device)
#       end

#       it "re-renders the 'edit' template" do
#         active_device = ActiveDevice.create! valid_attributes
#         # Trigger the behavior that occurs when invalid params are submitted
#         ActiveDevice.any_instance.stub(:save).and_return(false)
#         put :update, {:id => active_device.to_param, :active_device => { "remote_notification_token" => "invalid value" }}, valid_session
#         response.should render_template("edit")
#       end
#     end
#   end

#   describe "DELETE destroy" do
#     it "destroys the requested active_device" do
#       active_device = ActiveDevice.create! valid_attributes
#       expect {
#         delete :destroy, {:id => active_device.to_param}, valid_session
#       }.to change(ActiveDevice, :count).by(-1)
#     end

#     it "redirects to the active_devices list" do
#       active_device = ActiveDevice.create! valid_attributes
#       delete :destroy, {:id => active_device.to_param}, valid_session
#       response.should redirect_to(active_devices_url)
#     end
#   end

# end
