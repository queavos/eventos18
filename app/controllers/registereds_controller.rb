class RegisteredsController < ApplicationController
  before_action :set_registered, only: [:show, :edit, :update, :destroy]

  # GET /registereds
  # GET /registereds.json
  def index
    @registereds = Registered.all
  end

  # GET /registereds/1
  # GET /registereds/1.json
  def show
  end

  # GET /registereds/new
  def new
    @registered = Registered.new
  end

  # GET /registereds/1/edit
  def edit
  end

  # POST /registereds
  # POST /registereds.json
  def create
    @registered = Registered.new(registered_params)

    respond_to do |format|
      if @registered.save
        format.html { redirect_to @registered, notice: 'Registered was successfully created.' }
        format.json { render :show, status: :created, location: @registered }
      else
        format.html { render :new }
        format.json { render json: @registered.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registereds/1
  # PATCH/PUT /registereds/1.json
  def update
    respond_to do |format|
      if @registered.update(registered_params)
        format.html { redirect_to @registered, notice: 'Registered was successfully updated.' }
        format.json { render :show, status: :ok, location: @registered }
      else
        format.html { render :edit }
        format.json { render json: @registered.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registereds/1
  # DELETE /registereds/1.json
  def destroy
    @registered.destroy
    respond_to do |format|
      format.html { redirect_to registereds_url, notice: 'Registered was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registered
      @registered = Registered.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registered_params
      params.require(:registered).permit(:regDate, :status, :checked, :user_id, :event_id)
    end
end
