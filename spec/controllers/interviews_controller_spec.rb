require 'spec_helper'

describe InterviewsController do

	describe "handling Index" do
		it 'should list all the interviews' do
			@interviews = mock_model(Interview)
			Interview.stub!(:find).with(:all).and_return(true)
			response.should be_success
			get :index
		end
	end

	
end