class EnvironmentsController < ApplicationController
  before_action

  def index
    @environments = Project.find(params[:project_id]).environments
  end

  def show
    if Environment.find_by(id: params[:id])
      @environment = Environment.find(params[:id])
      @servers = Environment.find(params[:id]).servers
      @project_id = params[:project_id]
      @project = Project.find(params[:project_id])

      if !@project.environments.find_by(id: @environment.id)
        redirect_to project_path(@project_id), danger: "That environment does not exist for this project."
      end

    else
      redirect_to projects_path, danger: "This environment does not exist."
    end
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
        format.html { redirect_to project_path(@environment.project_id), notice: 'Environment was added to project.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    @environment = Environment.find(params[:id])

    respond_to do |format|
      if @environment.update(environment_params)
        format.html { redirect_to project_environment_path(@environment.project_id), notice: 'Environment was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @environment = Environment.find(params[:id])
    @environment.destroy

    @project = Project.find(params[:id])
    respond_to do |format|
      format.html { redirect_to project_path(@environment.project_id), notice: 'Environment was successfully deleted.' }
    end
  end

  private

    def environment_params
      params.require(:environment).permit(:name, :project_id, :docker, :rancher, :architecture, :url, :dbname, :dbhost, :dbuser,:dbport, :notes,
      servers_attributes: [:id, :hostname, :ip, :cpu, :memory, :storage, :location, :notes, :operating_system, :environment_id, :_destroy],
      load_balacers_attributes: [:ip, :brand, :applicability, :environment_id, :_destroy]
      )
    end
end
