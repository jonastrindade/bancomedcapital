require 'rails_helper'

RSpec.describe ExtratosController, :type => :controller do

  let(:user) { create(:user) }

  before do 
    sign_in user 
  end
  
  describe "GET index" do
    it "has a 200 status code" do
      get :index
      expect(response.status).to eq(200)
    end
  end
end