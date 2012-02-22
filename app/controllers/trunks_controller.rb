class TrunksController < ApplicationController
  def new
    #@trunk = Trunk.new_with_sip_device
    @trunk = Trunk.new
    @trunk.build_sip_device
  end
end
