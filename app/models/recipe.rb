class Recipe < ApplicationRecord
  has_rich_text :instructions
  
  validates :title, presence: true
  validates :cook_time, numericality: { only_integer: true, greater_than: 0 }
  validates :difficulty, presence: true
end