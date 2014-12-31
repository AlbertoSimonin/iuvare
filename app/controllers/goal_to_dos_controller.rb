class GoalToDosController < ApplicationController
  before_action :set_goal_to_do, only: [:show, :edit, :update, :destroy]

  # GET /goal_to_dos
  # GET /goal_to_dos.json
  def index
    @goal_to_dos = GoalToDo.all
  end

  # GET /goal_to_dos/1
  # GET /goal_to_dos/1.json
  def show
  end

  # GET /goal_to_dos/new
  def new
    @goal_to_do = GoalToDo.new
  end

  # GET /goal_to_dos/1/edit
  def edit
  end

  # POST /goal_to_dos
  # POST /goal_to_dos.json
  def create
    @goal_to_do = GoalToDo.new(goal_to_do_params)

    respond_to do |format|
      if @goal_to_do.save
        format.html { redirect_to @goal_to_do, notice: 'Goal to do was successfully created.' }
        format.json { render :show, status: :created, location: @goal_to_do }
      else
        format.html { render :new }
        format.json { render json: @goal_to_do.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /goal_to_dos/1
  # PATCH/PUT /goal_to_dos/1.json
  def update
    respond_to do |format|
      if @goal_to_do.update(goal_to_do_params)
        format.html { redirect_to @goal_to_do, notice: 'Goal to do was successfully updated.' }
        format.json { render :show, status: :ok, location: @goal_to_do }
      else
        format.html { render :edit }
        format.json { render json: @goal_to_do.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /goal_to_dos/1
  # DELETE /goal_to_dos/1.json
  def destroy
    @goal_to_do.destroy
    respond_to do |format|
      format.html { redirect_to goal_to_dos_url, notice: 'Goal to do was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goal_to_do
      @goal_to_do = GoalToDo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def goal_to_do_params
      params.require(:goal_to_do).permit(:users_id, :dream, :goal, :date)
    end
end
