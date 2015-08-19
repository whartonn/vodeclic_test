require 'rails_helper'

RSpec.describe BadgesController, :type => :controller do
  before(:each) do
    @badge = create(:badge_1)
  end
  
  describe "GET index" do
    it "retrieves the index page" do
      get :index
    end
  end
end
