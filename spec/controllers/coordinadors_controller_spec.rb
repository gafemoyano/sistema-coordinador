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

describe CoordinadorsController do

  # This should return the minimal set of attributes required to create a valid
  # Coordinador. As you add validations to Coordinador, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # CoordinadorsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all coordinadors as @coordinadors" do
      coordinador = Coordinador.create! valid_attributes
      get :index, {}, valid_session
      assigns(:coordinadors).should eq([coordinador])
    end
  end

  describe "GET show" do
    it "assigns the requested coordinador as @coordinador" do
      coordinador = Coordinador.create! valid_attributes
      get :show, {:id => coordinador.to_param}, valid_session
      assigns(:coordinador).should eq(coordinador)
    end
  end

  describe "GET new" do
    it "assigns a new coordinador as @coordinador" do
      get :new, {}, valid_session
      assigns(:coordinador).should be_a_new(Coordinador)
    end
  end

  describe "GET edit" do
    it "assigns the requested coordinador as @coordinador" do
      coordinador = Coordinador.create! valid_attributes
      get :edit, {:id => coordinador.to_param}, valid_session
      assigns(:coordinador).should eq(coordinador)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Coordinador" do
        expect {
          post :create, {:coordinador => valid_attributes}, valid_session
        }.to change(Coordinador, :count).by(1)
      end

      it "assigns a newly created coordinador as @coordinador" do
        post :create, {:coordinador => valid_attributes}, valid_session
        assigns(:coordinador).should be_a(Coordinador)
        assigns(:coordinador).should be_persisted
      end

      it "redirects to the created coordinador" do
        post :create, {:coordinador => valid_attributes}, valid_session
        response.should redirect_to(Coordinador.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved coordinador as @coordinador" do
        # Trigger the behavior that occurs when invalid params are submitted
        Coordinador.any_instance.stub(:save).and_return(false)
        post :create, {:coordinador => {}}, valid_session
        assigns(:coordinador).should be_a_new(Coordinador)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Coordinador.any_instance.stub(:save).and_return(false)
        post :create, {:coordinador => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested coordinador" do
        coordinador = Coordinador.create! valid_attributes
        # Assuming there are no other coordinadors in the database, this
        # specifies that the Coordinador created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Coordinador.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => coordinador.to_param, :coordinador => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested coordinador as @coordinador" do
        coordinador = Coordinador.create! valid_attributes
        put :update, {:id => coordinador.to_param, :coordinador => valid_attributes}, valid_session
        assigns(:coordinador).should eq(coordinador)
      end

      it "redirects to the coordinador" do
        coordinador = Coordinador.create! valid_attributes
        put :update, {:id => coordinador.to_param, :coordinador => valid_attributes}, valid_session
        response.should redirect_to(coordinador)
      end
    end

    describe "with invalid params" do
      it "assigns the coordinador as @coordinador" do
        coordinador = Coordinador.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Coordinador.any_instance.stub(:save).and_return(false)
        put :update, {:id => coordinador.to_param, :coordinador => {}}, valid_session
        assigns(:coordinador).should eq(coordinador)
      end

      it "re-renders the 'edit' template" do
        coordinador = Coordinador.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Coordinador.any_instance.stub(:save).and_return(false)
        put :update, {:id => coordinador.to_param, :coordinador => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested coordinador" do
      coordinador = Coordinador.create! valid_attributes
      expect {
        delete :destroy, {:id => coordinador.to_param}, valid_session
      }.to change(Coordinador, :count).by(-1)
    end

    it "redirects to the coordinadors list" do
      coordinador = Coordinador.create! valid_attributes
      delete :destroy, {:id => coordinador.to_param}, valid_session
      response.should redirect_to(coordinadors_url)
    end
  end

end
