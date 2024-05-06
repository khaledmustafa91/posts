class Post < ApplicationRecord

  has_many :reviews
  belongs_to :user

  scope :by_rate, -> { joins(:reviews).group('posts.id').order('AVG(reviews.rate) DESC') }
  scope :by_user_id, -> (user_id) { where(user_id: user_id) }
end
