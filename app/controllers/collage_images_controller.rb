class CollageImagesController < ApplicationController
  before_action :set_collage_image, only: [:show, :edit, :update, :destroy]

  # GET /collage_images
  # GET /collage_images.json
  def index
    @collage_images = CollageImage.all
  end

  # GET /collage_images/1
  # GET /collage_images/1.json
  def show
  end

  # GET /collage_images/new
  def new
    @collage_image = CollageImage.new
  end

  # GET /collage_images/1/edit
  def edit
  end

  # POST /collage_images
  # POST /collage_images.json
  def create
    @collage_image = CollageImage.new(collage_image_params)

    respond_to do |format|
      if @collage_image.save
        format.html { redirect_to @collage_image, notice: 'Collage image was successfully created.' }
        format.json { render :show, status: :created, location: @collage_image }
      else
        format.html { render :new }
        format.json { render json: @collage_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /collage_images/1
  # PATCH/PUT /collage_images/1.json
  def update
    respond_to do |format|
      if @collage_image.update(collage_image_params)
        format.html { redirect_to @collage_image, notice: 'Collage image was successfully updated.' }
        format.json { render :show, status: :ok, location: @collage_image }
      else
        format.html { render :edit }
        format.json { render json: @collage_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /collage_images/1
  # DELETE /collage_images/1.json
  def destroy
    @collage_image.destroy
    respond_to do |format|
      format.html { redirect_to collage_images_url, notice: 'Collage image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_collage_image
      @collage_image = CollageImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def collage_image_params
      params.require(:collage_image).permit(:collages_id, :source)
    end
end
