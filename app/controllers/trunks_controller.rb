class TrunksController < ApplicationController
  respond_to :html, :xml, :json

  def new
    @trunk = Trunk.new
    respond_with @trunk
  end

  def create
    @trunk = Trunk.new(params[:trunk])
    flash[:notice] = "Successfully created new SIP Trunk (#{@trunk.name})." if @trunk.save
    respond_with(@trunk, :location => trunks_path)
  end

  def index
    respond_with @trunks
  end

  def show
    respond_with @trunk
  end

end
