class EnvironmentsController < ApplicationController
  def index
    @environments = Project.find(params[:project_id]).environments
  end

  def show
    @environment = Environment.find(params[:id])
    @servers = Environment.find(params[:id]).servers
    @project_id = params[:project_id]
  end

  def new
    @environment = Environment.new()
    @project = Project.find(params[:project_id]).name
    @project_id = params[:project_id]
    @environments = Project.find(params[:project_id]).environments
    @@project_id = params[:project_id]
  end

  def edit
    @environment = Environment.find(params[:id])
    @project = Project.find(params[:project_id]).name
    @project_id = params[:project_id]
    @servers = Environment.find(params[:id]).servers
    @environments = Project.find(params[:project_id]).environments
  end

  def create
    @environment = Environment.new(environment_params)

    respond_to do |format|
      if @environment.save
        format.html { redirect_to project_path(@@project_id), notice: 'Environment was added to project.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    @environment = Environment.find(params[:id])

    respond_to do |format|
      if @environment.update(environment_params)
        format.html { redirect_to projects_path, notice: 'Environment was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  private

    def environment_params
      params.require(:environment).permit(:name, :project_id,
      servers_attributes: [:id, :hostname, :ip, :cpu, :memory, :storage, :location, :notes, :operating_system, :environment_id, :_destroy],
      load_balacers_attributes: [:ip, :brand, :applicability, :environment_id, :_destroy]
      )
    end
end
