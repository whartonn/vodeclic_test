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
end
