class BandRidersController < ApplicationController
  before_action :set_band_rider, only: %i[ show edit update destroy ]

  # GET /band_riders or /band_riders.json
  def index
    @band_riders = BandRider.all
  end

  # GET /band_riders/1 or /band_riders/1.json
  def show
  end

  # GET /band_riders/new
  def new
    @band_rider = BandRider.new
  end

  # GET /band_riders/1/edit
  def edit
  end

  # POST /band_riders or /band_riders.json
  def create
    @band_rider = BandRider.new(band_rider_params)

    respond_to do |format|
      if @band_rider.save
        format.html { redirect_to band_rider_url(@band_rider), notice: "Band rider was successfully created." }
        format.json { render :show, status: :created, location: @band_rider }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @band_rider.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /band_riders/1 or /band_riders/1.json
  def update
    respond_to do |format|
      if @band_rider.update(band_rider_params)
        format.html { redirect_to band_rider_url(@band_rider), notice: "Band rider was successfully updated." }
        format.json { render :show, status: :ok, location: @band_rider }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @band_rider.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /band_riders/1 or /band_riders/1.json
  def destroy
    @band_rider.destroy!

    respond_to do |format|
      format.html { redirect_to band_riders_url, notice: "Band rider was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_band_rider
      @band_rider = BandRider.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def band_rider_params
      params.require(:band_rider).permit(:band_id, :name, :version)
    end
end
