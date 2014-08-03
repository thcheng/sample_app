require 'spec_helper'

describe UsersController do
	render_views

	before(:each) do
		@base_title = "Ruby on Rails Tutorial Sample App"
	end
  
	describe "GET 'new'" do
		it "returns http success" do
			get 'new'
			response.should be_success
		end
    
		it "should have the right title" do
			get 'new'
			# response.should have_selector("title",
			                              # :content => "Sign up")
			response.should have_selector("title") do |title|
				title.should contain(/^#{Regexp.escape("#{@base_title} | Sign up")}$/)
			end
		end
	end
end
