class Tweet < ApplicationRecord
  belongs_to :user
  has_many :hearts
  validates :post, length: { maximum: 140 }, presence: true
  validates :username, presence: true
end
