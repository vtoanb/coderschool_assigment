class Article < ActiveRecord::Base
	validates :title, presence: true
	validates :body, presence: true
	has_many :comments, dependent: :destroy

    def self.search(search)
        where("title ILIKE ?", "%#{search}%")
    end
end
