class EnvironmentsController < ApplicationController
  def index
  
  end

  def new
    @project = Project.find(params[:project_id])
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
