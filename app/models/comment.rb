class Comment < ActiveRecord::Base
  belongs_to :article
  validates :article_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
end
