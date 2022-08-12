class Like < ApplicationRecord
  validates :userid, presence: true
  validates :postid, presence: true
end
