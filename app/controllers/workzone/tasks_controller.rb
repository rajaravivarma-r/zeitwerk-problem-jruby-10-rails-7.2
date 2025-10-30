class Workzone::TasksController < ApplicationController
  before_action :set_workzone_task, only: %i[ show edit update destroy ]

  # GET /workzone/tasks or /workzone/tasks.json
  def index
    @workzone_tasks = Workzone::Task.all
  end

  # GET /workzone/tasks/1 or /workzone/tasks/1.json
  def show
  end

  # GET /workzone/tasks/new
  def new
    @workzone_task = Workzone::Task.new
  end

  # GET /workzone/tasks/1/edit
  def edit
  end

  # POST /workzone/tasks or /workzone/tasks.json
  def create
    @workzone_task = Workzone::Task.new(workzone_task_params)

    respond_to do |format|
      if @workzone_task.save
        format.html { redirect_to workzone_task_url(@workzone_task), notice: "Task was successfully created." }
        format.json { render :show, status: :created, location: @workzone_task }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @workzone_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /workzone/tasks/1 or /workzone/tasks/1.json
  def update
    respond_to do |format|
      if @workzone_task.update(workzone_task_params)
        format.html { redirect_to workzone_task_url(@workzone_task), notice: "Task was successfully updated." }
        format.json { render :show, status: :ok, location: @workzone_task }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @workzone_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workzone/tasks/1 or /workzone/tasks/1.json
  def destroy
    @workzone_task.destroy

    respond_to do |format|
      format.html { redirect_to workzone_tasks_url, notice: "Task was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workzone_task
      @workzone_task = Workzone::Task.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def workzone_task_params
      params.require(:workzone_task).permit(:title, :description)
    end
end
