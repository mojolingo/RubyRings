require 'spec_helper'

describe TrunksController do
  before do
    @trunk_attributes = { :name => "ITSP Trunk" }
  end

  describe "GET /trunks/new" do
    it "renders the form to create a new trunk" do
      trunk = mock_model(Trunk).as_null_object
      Trunk.stub(:new).and_return(trunk)
      get :new
    end
  end

  describe "POST /trunks" do
    before do
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

  describe "GET /trunks/1" do
    it "shows the details for an existing trunk" do
      DatabaseCleaner.clean
      @trunk = Factory(:trunk, :id => 1)
      Trunk.stub!(:find).with("1").and_return(@trunk)
      get :show, :id => "1"
    end
  end

  describe "GET /trunks" do
    it "display a list of trunks" do
      @trunks = [ Factory(:trunk), Factory(:trunk) ]
      Trunk.should_receive(:all).and_return(@trunks)
      get :index
    end
  end

  describe "GET /trunks/1/edit" do
    it "renders the form to edit an existing trunk" do
      DatabaseCleaner.clean
      @trunk = Factory(:trunk, :id => 1)
      Trunk.stub!(:find).with("1").and_return(@trunk)
      get :edit, :id => "1"
    end
  end

  describe "PUT /trunks/1" do

    before do
      DatabaseCleaner.clean
      @trunk = Factory(:trunk, :id => 1)
      Trunk.stub!(:find).with("1").and_return(@trunk)
    end

    describe "when the trunk saves succesfully" do

      it "should find the trunk and return object" do
        Trunk.should_receive(:find).with("1").and_return(@trunk)
        put :update, :id => "1", :trunk => {}
      end

      it "should update the trunk object attributes" do
        Trunk.should_receive(:find).with("1").and_return(@trunk)
        @trunk.should_receive(:update_attributes).and_return(true)
        put :update, :id => "1", :trunk => {}
      end

      it "sets a flash[:notice] message" do
        put :update, :id => "1", :trunk => {}
        flash[:notice].should eq("Successfully updated SIP Trunk (#{@trunk.name}).")
      end

      it "redirects to the trunks show page" do
        put :update, :id => "1", :trunk => {}
        response.should redirect_to( trunk_path(@trunk) )
      end
    end

    describe "when the trunk fails to save" do

      before do
        @trunk.stub(:save).and_return(false)
        @trunk.stub(:errors).and_return( { :anything => "any value (even nil)" })
      end

      it "should not update the trunk object attributes" do
        Trunk.should_receive(:find).with("1").and_return(@trunk)
        @trunk.should_receive(:update_attributes).and_return(false)
        put :update, :id => "1", :trunk => {}
      end

      it "should render the edit template" do
        put :update, :id => "1", :trunk => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE /trunks/:id" do
    pending
  end

end
