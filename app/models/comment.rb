class Comment < ApplicationRecord
  validates :Text, presence: true
  belongs_to :post
  belongs_to :user

  def update_comment_counter
    post.increment!(:commentscounter)
  end
end
