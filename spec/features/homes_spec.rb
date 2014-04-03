require 'spec_helper'

describe "Homes" do
	before do
		@auto_generate_throw = %W(Rock Paper Scissors).sample
	end	
  describe "GET /" do
    
    it "display Sign" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit root_path
      page.should have_content 'Sign'
    end
  end

  describe "Post /throw" do
  	it "Throw Rock" do
  		visit root_path
  		select 'Rock', :from =>'Sign'
  		click_button('Throw')

  		current_path.should == '/throw'
  		page.should have_content 'You throw Rock'
  	end
	
	it "Throw Paper" do
  		visit root_path
  		select 'Paper', :from =>'Sign'
  		click_button('Throw')

  		current_path.should == '/throw'
  		page.should have_content 'You throw Paper'
  	end

  	it "Throw Scissors" do
  		visit root_path
  		select 'Scissors', :from =>'Sign'
  		click_button('Throw')

  		current_path.should == '/throw'
  		page.should have_content 'You throw Scissors'
  	end
  end

end
