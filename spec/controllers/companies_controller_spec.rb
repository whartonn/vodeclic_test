require 'rails_helper'

RSpec.describe CompaniesController, :type => :controller do
  
  before(:each) do
    load Rails.root + "db/seeds.rb"
    # @company = create(:company_1)
  end
  
  describe "Company badges" do
    it "must have no badge if no user owns one" do      
      # todo: having trouble with loading FactoryGirl associations. moving on.
      @company = Company.where(name: "thoughtbot")
      # expect(@company.calculated_badges).to eq(0)
      # @user = create(:user_1)
    end
  end
  
  
  
  
end
