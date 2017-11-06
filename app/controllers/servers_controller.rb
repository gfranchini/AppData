class ServersController < ApplicationController
  def index
    @servers = Server.all
  end

  def new

  end
end
