require 'spec_helper'

describe HomeController do
  	before do
		@auto_generate_throw = %W(Rock Paper Scissors).sample
	end		
  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

end
