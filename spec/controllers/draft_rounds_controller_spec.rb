require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe DraftRoundsController do

  # This should return the minimal set of attributes required to create a valid
  # DraftRound. As you add validations to DraftRound, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "round_number" => "1" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # DraftRoundsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all draft_rounds as @draft_rounds" do
      draft_round = DraftRound.create! valid_attributes
      get :index, {}, valid_session
      assigns(:draft_rounds).should eq([draft_round])
    end
  end

  describe "GET show" do
    it "assigns the requested draft_round as @draft_round" do
      draft_round = DraftRound.create! valid_attributes
      get :show, {:id => draft_round.to_param}, valid_session
      assigns(:draft_round).should eq(draft_round)
    end
  end

  describe "GET new" do
    it "assigns a new draft_round as @draft_round" do
      get :new, {}, valid_session
      assigns(:draft_round).should be_a_new(DraftRound)
    end
  end

  describe "GET edit" do
    it "assigns the requested draft_round as @draft_round" do
      draft_round = DraftRound.create! valid_attributes
      get :edit, {:id => draft_round.to_param}, valid_session
      assigns(:draft_round).should eq(draft_round)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new DraftRound" do
        expect {
          post :create, {:draft_round => valid_attributes}, valid_session
        }.to change(DraftRound, :count).by(1)
      end

      it "assigns a newly created draft_round as @draft_round" do
        post :create, {:draft_round => valid_attributes}, valid_session
        assigns(:draft_round).should be_a(DraftRound)
        assigns(:draft_round).should be_persisted
      end

      it "redirects to the created draft_round" do
        post :create, {:draft_round => valid_attributes}, valid_session
        response.should redirect_to(DraftRound.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved draft_round as @draft_round" do
        # Trigger the behavior that occurs when invalid params are submitted
        DraftRound.any_instance.stub(:save).and_return(false)
        post :create, {:draft_round => { "round_number" => "invalid value" }}, valid_session
        assigns(:draft_round).should be_a_new(DraftRound)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        DraftRound.any_instance.stub(:save).and_return(false)
        post :create, {:draft_round => { "round_number" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested draft_round" do
        draft_round = DraftRound.create! valid_attributes
        # Assuming there are no other draft_rounds in the database, this
        # specifies that the DraftRound created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        DraftRound.any_instance.should_receive(:update).with({ "round_number" => "1" })
        put :update, {:id => draft_round.to_param, :draft_round => { "round_number" => "1" }}, valid_session
      end

      it "assigns the requested draft_round as @draft_round" do
        draft_round = DraftRound.create! valid_attributes
        put :update, {:id => draft_round.to_param, :draft_round => valid_attributes}, valid_session
        assigns(:draft_round).should eq(draft_round)
      end

      it "redirects to the draft_round" do
        draft_round = DraftRound.create! valid_attributes
        put :update, {:id => draft_round.to_param, :draft_round => valid_attributes}, valid_session
        response.should redirect_to(draft_round)
      end
    end

    describe "with invalid params" do
      it "assigns the draft_round as @draft_round" do
        draft_round = DraftRound.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        DraftRound.any_instance.stub(:save).and_return(false)
        put :update, {:id => draft_round.to_param, :draft_round => { "round_number" => "invalid value" }}, valid_session
        assigns(:draft_round).should eq(draft_round)
      end

      it "re-renders the 'edit' template" do
        draft_round = DraftRound.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        DraftRound.any_instance.stub(:save).and_return(false)
        put :update, {:id => draft_round.to_param, :draft_round => { "round_number" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested draft_round" do
      draft_round = DraftRound.create! valid_attributes
      expect {
        delete :destroy, {:id => draft_round.to_param}, valid_session
      }.to change(DraftRound, :count).by(-1)
    end

    it "redirects to the draft_rounds list" do
      draft_round = DraftRound.create! valid_attributes
      delete :destroy, {:id => draft_round.to_param}, valid_session
      response.should redirect_to(draft_rounds_url)
    end
  end

end
