class Tweet < ApplicationRecord
  has_many :hearts
  validates :post, length: { maximum: 140 }, presence: true
  validates :username, presence: true
end
