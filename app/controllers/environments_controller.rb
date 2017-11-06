class EnvironmentsController < ApplicationController
  def index
    @environments = Project.find(params[:project_id]).environments
  end

  def show
    @environment = Environment.find(params[:id])
  end

  def new
    @project = Project.find(params[:project_id]).name
    @project_id = params[:project_id]
    @environment = Environment.new()
  end

  def create
    @environment = Environment.new(environment_params)

    respond_to do |format|
      if @environment.save
        format.html { redirect_to projects_path, notice: 'Environment was added to project.' }
      else
        format.html { render :new }
      end
    end
  end

  private

    def environment_params
      params.require(:environment).permit(:name, :project_id)
    end
end
