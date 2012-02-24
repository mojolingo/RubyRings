require 'spec_helper'

describe TrunksController do

  describe "GET new" do
    it "creates a new trunk" do
      trunk = mock_model(Trunk).as_null_object
      Trunk.stub(:new).and_return(trunk)
      get :new
    end
  end

  describe "POST create" do
    before do
      @trunk_attributes = { :name => "ITSP Trunk" }
      @trunk = Factory.build(:trunk, :name => "ITSP Trunk")
      Trunk.stub(:new).and_return(@trunk)
    end

    it "creates a trunk" do
      Trunk.should_receive(:new).and_return(@trunk)
      post :create
    end

    it "saves the trunk" do
      @trunk.should_receive(:save)
      post :create
    end

    describe "when the trunk saves succesfully" do
      it "sets a flash[:notice] message" do
        post :create, :trunk => @trunk_attributes
        flash[:notice].should eq("Successfully created new SIP Trunk (#{@trunk.name}).")
      end

      it "redirects to Trunks index" do
        post :create, :trunk => @trunk_attributes
        response.should redirect_to(:action => "index")
      end
    end

    describe "when the trunk fails to save" do
      before do
        @trunk.stub(:save).and_return(false)
        @trunk.stub(:errors).and_return( { :anything => "any value (even nil)" })
      end

      it "assigns @trunk" do
        post :create
        assigns[:trunk].should eq(@trunk)
      end

      it "renders the new template" do
        post :create
        response.should render_template("new")
      end
    end

  end

  describe "GET show" do
  end

  describe "GET index" do
  end

  describe "GET edit" do
  end

  describe "PUT update" do
  end

  describe "DELETE delete" do
  end

end
