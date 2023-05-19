#observer and singleton patterns
#check the folder for models > walk_observer.rb
#check the walk controller
#check the lib folder
require 'my_logger'

require 'walk_decorator'
#added for the decorator design pattern, file in lib folder

class WalksController < ApplicationController
  before_action :set_walk, only: %i[ show edit update destroy ]

  # GET /walks or /walks.json
  def index
    @walks = Walk.all
  end

  # GET /walks/1 or /walks/1.json
  def show
  end

  # GET /walks/new
  def new
    @walk = Walk.new
  end

  # GET /walks/1/edit
  def edit
  end

  # POST /walks or /walks.json
  def create
   #@walk = Walk.new(walk_params) #original statement
   
	@walk = Walk.new() #new walk obj
	@walk.name = params[:walk][:name]
	@walk.start_lat = params[:walk][:start_lat]
	@walk.start_long = params[:walk][:start_long]
	@walk.end_lat = params[:walk][:end_lat]
	@walk.end_long = params[:walk][:end_long]
	@walk.loop = params[:walk][:loop]
	@walk.duration = params[:walk][:duration]
	@walk.difficulty = params[:walk][:difficulty]
	@walk.desc = params[:walk][:desc] #take the entered desc and that will added to by decorator 

	#create a BasicWalk with the required params
	checkedWalk = BasicWalk.new(@walk.difficulty, @walk.duration)
	#use that to Decorate the walk
	checkedWalk = DecoratedWalk.new(checkedWalk)
	#get the decorated desc and save it to the @desc param 
	@walk.desc = @walk.desc + " " +checkedWalk.tough
	
    respond_to do |format|
      if @walk.save
        format.html { redirect_to walk_url(@walk), notice: "Walk was successfully created." }
        format.json { render :show, status: :created, location: @walk }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @walk.errors, status: :unprocessable_entity }
      end
	  
	 # retrieve the instance/object of the MyLogger class
    logger = MyLogger.instance
    logger.logInformation("A new walk created: " + @walk.name) 
	
   end
	
	
  end

  # PATCH/PUT /walks/1 or /walks/1.json
  def update
    respond_to do |format|
      if @walk.update(walk_params)
        format.html { redirect_to walk_url(@walk), notice: "Walk was successfully updated." }
        format.json { render :show, status: :ok, location: @walk }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @walk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /walks/1 or /walks/1.json
  def destroy
    @walk.destroy
	
	#my addition - show update info
    logger = MyLogger.instance
    logger.logInformation("A walk has been destroyed: " + @walk.desc)
	
    respond_to do |format|
      format.html { redirect_to walks_url, notice: "Walk was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_walk
      @walk = Walk.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def walk_params
      params.require(:walk).permit(:name, :desc, :start_lat, :start_long, :end_lat, :end_long, :duration, :loop, :difficulty)
    end
end


