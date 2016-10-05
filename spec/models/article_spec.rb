# spec/models/article.rb
require 'rails_helper'

# describe Article do
#	it "has a valid factory"
#	it "is valid without title"
#	it "is valid without body"
# end

describe Article do
	it "has a valid factory" do
		Factory.create(:contact).should be_valid
	end
	it "is invalid without title"
	it "is invalid without body"
end