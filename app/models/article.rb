class Article < ApplicationRecord
  include Visible
  extend FriendlyId
  friendly_id :title, use: :slugged
  
  has_many :comments

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
  validates :slug, presence: true, uniqueness: true
end

