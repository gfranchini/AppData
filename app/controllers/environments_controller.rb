class EnvironmentsController < ApplicationController
  def index
    @environments = Environment.where(project_id: params[:project_id])
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
end
