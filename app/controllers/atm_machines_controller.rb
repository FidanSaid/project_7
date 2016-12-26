class AtmMachinesController < ApplicationController
  before_action :set_atm_machine, only: [:show, :edit, :update, :destroy]

  # GET /atm_machineines
  # GET /atm_machineines.json
  
  def index
   @atm_machines = AtmMachine.all
  end

 # GET /atm_machineinees/1
 # GET /atm_machines/1.json
 def show
    session[:atm_no] = @atm_machine.id

 end

 # GET /atm_machinees/new
 def new
   @atm_machine = AtmMachine.new
 end

 # GET /atm_machinees/1/edit
 def edit
 end

 # POST /atm_machinees
 # POST /atm_machinees.json
 def create
   @atm_machine = AtmMachine.new(atm_machine_params)

   respond_to do |format|
     if @atm_machine.save
       format.html { redirect_to @atm_machine, notice: 'Atm mach was successfully created.' }
       format.json { render :show, status: :created, location: @atm_machine }
     else
       format.html { render :new }
       format.json { render json: @atm_machine.errors, status: :unprocessable_entity }
     end
   end
 end

 # PATCH/PUT /atm_machinees/1
 # PATCH/PUT /atm_machinees/1.json
 def update
   respond_to do |format|
     if @atm_machine.update(atm_machine_params)
       format.html { redirect_to @atm_machine, notice: 'Atm mach was successfully updated.' }
       format.json { render :show, status: :ok, location: @atm_machine }
     else
       format.html { render :edit }
       format.json { render json: @atm_machine.errors, status: :unprocessable_entity }
     end
   end
 end

 # DELETE /atm_machinees/1
 # DELETE /atm_machinees/1.json
 def destroy
   @atm_machine.destroy
   respond_to do |format|
     format.html { redirect_to atm_machinees_url, notice: 'Atm mach was successfully destroyed.' }
     format.json { head :no_content }
   end
 end

 private
   # Use callbacks to share common setup or constraints between actions.
   def set_atm_machine
     @atm_machine = AtmMachine.find(params[:id])
   end

   # Never trust parameters from the scary internet, only allow the white list through.
   def atm_machine_params
     params.require(:atm_machine).permit(:name, :state, :city, :address, :street, :latitude, :longitude)
   end
end

