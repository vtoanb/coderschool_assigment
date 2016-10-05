# spec/factories/articles.rb
require 'faker'

FactoryGirl.define do
	factory :article do |f|
		f.title "{ Faker::Title.title }"
		f.body  "{ Faker::Body.body }"
	end
end
