require 'rails_helper'

RSpec.describe CompaniesController, :type => :controller do
  
  before(:each) do
    load Rails.root + "db/seeds.rb"
    # @company = create(:company_1)
  end
  
  describe "Company badges" do
    it "must have at least one badge if a user owns one" do      
      # todo: having trouble with loading FactoryGirl associations. moving on.
      # @company = create(:company_1)
      # @user = create(:user_1)
    end
  end
  
  
  
  
end
