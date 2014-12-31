class WorkshopScoresController < ApplicationController
  before_action :set_workshop_score, only: [:show, :edit, :update, :destroy]

  # GET /workshop_scores
  # GET /workshop_scores.json
  def index
    @workshop_scores = WorkshopScore.all
  end

  # GET /workshop_scores/1
  # GET /workshop_scores/1.json
  def show
  end

  # GET /workshop_scores/new
  def new
    @workshop_score = WorkshopScore.new
  end

  # GET /workshop_scores/1/edit
  def edit
  end

  # POST /workshop_scores
  # POST /workshop_scores.json
  def create
    @workshop_score = WorkshopScore.new(workshop_score_params)

    respond_to do |format|
      if @workshop_score.save
        format.html { redirect_to @workshop_score, notice: 'Workshop score was successfully created.' }
        format.json { render :show, status: :created, location: @workshop_score }
      else
        format.html { render :new }
        format.json { render json: @workshop_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /workshop_scores/1
  # PATCH/PUT /workshop_scores/1.json
  def update
    respond_to do |format|
      if @workshop_score.update(workshop_score_params)
        format.html { redirect_to @workshop_score, notice: 'Workshop score was successfully updated.' }
        format.json { render :show, status: :ok, location: @workshop_score }
      else
        format.html { render :edit }
        format.json { render json: @workshop_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workshop_scores/1
  # DELETE /workshop_scores/1.json
  def destroy
    @workshop_score.destroy
    respond_to do |format|
      format.html { redirect_to workshop_scores_url, notice: 'Workshop score was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workshop_score
      @workshop_score = WorkshopScore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def workshop_score_params
      params.require(:workshop_score).permit(:users_id, :workshops_id, :score)
    end
end
