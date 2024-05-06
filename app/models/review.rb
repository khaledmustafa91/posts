class Review < ApplicationRecord

  belongs_to :post

  validates_presence_of :comment, :rate
  validates :rate, inclusion: 1..5
end