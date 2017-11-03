class EnvironmentsController < ApplicationController
  def index
    env_id = Project.find(params[:project_id]).environment_id
    @environment = Environment.find(env_id).environment
  end

  def dev
  end

  def qa
  end

  def training
  end

  def staging
  end

  def production
  end

  def show

  end
end
