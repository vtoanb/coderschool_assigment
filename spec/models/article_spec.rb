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
		expect(FactoryGirl.build(:article,title: nil)).not_to be_valid
	end
	it "is invalid without body" do
		expect(FactoryGirl.build(:article,body: nil)).not_to be_valid
	end
end

