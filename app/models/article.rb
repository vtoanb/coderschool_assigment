class Article < ActiveRecord::Base
	validates :title, presence: true
	validates :body, presence: true
    def self.search(search)
        where("title ILIKE ?", "%#{search}%")
    end
end
