require 'spec_helper'

describe TrunksController do

  describe "GET new" do
    it "creates a new trunk" do
      trunk = mock_model(Trunk).as_null_object
      Trunk.should_receive(:new)
      get :new
    end

  end

end
