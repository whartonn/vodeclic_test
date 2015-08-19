require 'rails_helper'

RSpec.describe BadgesController, :type => :controller do
  before(:each) do
    @badge = create(:badge_1)
  end
  
  describe "GET index" do
    it "retrieves the index page" do
      get :index
      expect(response).to have_http_status(:success)
      expect(response).to render_template :index
      expect(assigns(:badges)).to be_truthy
    end
  end
  
  describe "should GET new" do
    it "retrieves the new page" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end
  
  describe "POST badge" do
    it "should create badge" do
      expect{
        post :create, badge: { fa_symbol: @badge.fa_symbol, 
          name: @badge.name }
      }.to change{Badge.count}.by(1)
      expect(response).to redirect_to(badge_path(assigns(:badge)))
    end
  end
  
  describe "GET badge" do
    it "should show the appropriate badge" do
      get :show, id: @badge.id
      expect(response).to have_http_status(:success)
      expect(response).to render_template :show
    end
  end

  describe "edit badge" do
    it "should edit a badge" do
      get :edit, id: @badge
      expect(response).to have_http_status(:success)
    end
  end
  
  describe "PATCH badge" do
    it "should update badge" do
      patch :update, id: @badge, badge: {fa_symbol: @badge.fa_symbol, name: @badge.name }
      expect(response).to redirect_to(badge_path(assigns(:badge)))
    end
  end

  describe "DELETE badge" do
    it "should delete badge" do
      expect{
        delete :destroy, id: @badge
      }.to change{Badge.count}.by(-1)
    end
  end
  
end
