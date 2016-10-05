# spec/models/article.rb
require 'rails_helper'

# describe Article do
#	it "has a valid factory"
#	it "is valid without title"
#	it "is valid without body"
# end

describe Article do
	it "has a valid factory" do
		expect(FactoryGirl.create(:article)).to be_valid
	end
	it "is invalid without title" do
		FactoryGirl.build(:article,title: nil).should_not be_valid
	end
	it "is invalid without body" do
		FactoryGirl.build(:article,body: nil).should_not be_valid
	end
end