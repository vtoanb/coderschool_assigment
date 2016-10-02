class Article < ActiveRecord::Base
    def self.search(search)
        where("title ILIKE ?", "%#{search}%")
    end
end
