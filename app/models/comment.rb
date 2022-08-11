class Comment < ApplicationRecord
  validates :Text, peresence: true

  belongs_to :post
end
