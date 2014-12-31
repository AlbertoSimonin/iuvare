class GoalToBesController < ApplicationController
  before_action :set_goal_to_be, only: [:show, :edit, :update, :destroy]

  # GET /goal_to_bes
  # GET /goal_to_bes.json
  def index
    @goal_to_bes = GoalToBe.all
  end

  # GET /goal_to_bes/1
  # GET /goal_to_bes/1.json
  def show
  end

  # GET /goal_to_bes/new
  def new
    @goal_to_be = GoalToBe.new
  end

  # GET /goal_to_bes/1/edit
  def edit
  end

  # POST /goal_to_bes
  # POST /goal_to_bes.json
  def create
    @goal_to_be = GoalToBe.new(goal_to_be_params)

    respond_to do |format|
      if @goal_to_be.save
        format.html { redirect_to @goal_to_be, notice: 'Goal to be was successfully created.' }
        format.json { render :show, status: :created, location: @goal_to_be }
      else
        format.html { render :new }
        format.json { render json: @goal_to_be.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /goal_to_bes/1
  # PATCH/PUT /goal_to_bes/1.json
  def update
    respond_to do |format|
      if @goal_to_be.update(goal_to_be_params)
        format.html { redirect_to @goal_to_be, notice: 'Goal to be was successfully updated.' }
        format.json { render :show, status: :ok, location: @goal_to_be }
      else
        format.html { render :edit }
        format.json { render json: @goal_to_be.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /goal_to_bes/1
  # DELETE /goal_to_bes/1.json
  def destroy
    @goal_to_be.destroy
    respond_to do |format|
      format.html { redirect_to goal_to_bes_url, notice: 'Goal to be was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goal_to_be
      @goal_to_be = GoalToBe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def goal_to_be_params
      params.require(:goal_to_be).permit(:users_id, :dream, :goal, :date)
    end
end
