class BandPatchesController < ApplicationController
  before_action :set_band_patch, only: %i[ show edit update destroy ]

  # GET /band_patches or /band_patches.json
  def index
    #@band_patches = BandPatch.all
    @band_patches = BandPatch.all.order(:channel_number)
  end

  # GET /band_patches/1 or /band_patches/1.json
  def show
  end

  # GET /band_patches/new
  def new
    @band_patch = BandPatch.new
  end

  # GET /band_patches/1/edit
  def edit
  end

  # POST /band_patches or /band_patches.json
  def create
    @band_patch = BandPatch.new(band_patch_params)

    respond_to do |format|
      if @band_patch.save
        format.html { redirect_to band_patch_url(@band_patch), notice: "Band patch was successfully created." }
        format.json { render :show, status: :created, location: @band_patch }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @band_patch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /band_patches/1 or /band_patches/1.json
  def update
    respond_to do |format|
      if @band_patch.update(band_patch_params)
        format.html { redirect_to band_patch_url(@band_patch), notice: "Band patch was successfully updated." }
        format.json { render :show, status: :ok, location: @band_patch }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @band_patch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /band_patches/1 or /band_patches/1.json
  def destroy
    @band_patch.destroy!

    respond_to do |format|
      format.html { redirect_to band_patches_url, notice: "Band patch was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_band_patch
      @band_patch = BandPatch.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def band_patch_params
      params.require(:band_patch).permit(:band_rider_id, :channel_number, :channel_name, :microphone, :phantom, :provided)
    end
end
