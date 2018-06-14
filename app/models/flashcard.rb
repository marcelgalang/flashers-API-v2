class Flashcard < ApplicationRecord
  validates :a_side, presence: true
  validates :b_side, presence: true

  belongs_to :user

  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings
  
end
