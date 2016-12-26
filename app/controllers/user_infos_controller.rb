class UserInfosController < ApplicationController
  before_action :set_user_info, only: [:show, :edit, :update, :destroy]

  # GET /user_infos
  # GET /user_infos.json
  
  

def index
   @user_infos = UserInfo.all
end

 # GET /user_infos/1
 # GET /user_infos/1.json
 def show
 end

 # GET /user_infos/new
 def new
     @user_info = UserInfo.new
     session[:atm_no] = params[:atm_no] 
 end

 # GET /user_infos/1/edit
 def edit
   session[:atm_no] = params[:atm_no] 
 end

 # POST /user_infos
 # POST /user_infos.json
 def create
   
 @user_info = UserInfo.new(user_info_params)
 @atm_no = params[:atm_no] 
   respond_to do |format|
     if @user_info.save
       format.html { redirect_to atm_machine_path(session[:atm_no])}
       format.json { render :show, status: :created, location: @user_info }
     else
       format.html { render :new }
       format.json { render json: @user_info.errors, status: :unprocessable_entity }
     end
   end
 end

 # PATCH/PUT /user_infos/1
 # PATCH/PUT /user_infos/1.json
 def update
   @atm_no = params[:atm_no] 
   respond_to do |format|
     if @user_info.update(user_info_params)
       format.html { redirect_to atm_machine_path(session[:atm_no])}
       format.json { render :show, status: :ok, location: @user_info }
     else
       format.html { render :edit }
       format.json { render json: @user_info.errors, status: :unprocessable_entity }
     end
   end
 end

 # DELETE /user_infos/1
 # DELETE /user_infos/1.json
 def destroy
   @user_info.destroy
   respond_to do |format|
     format.html { redirect_to user_infos_url, notice: 'User info was successfully destroyed.' }
     format.json { head :no_content }
   end
 end

 private

   def set_user_info
     @user_info = UserInfo.find(params[:id])
   end

  
   def user_info_params
     params.require(:user_info).permit(:first_name, :last_name, :email, :phone, :city, :state, :zip_code, :street,:user_id,:account)
   end
  
end