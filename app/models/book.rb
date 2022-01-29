class Book < ApplicationRecord
  validates :title, presence: true
  validates :page, presence: true, numericality: { only_integer: true }
  validates :description, presence: true
  has_rich_text :description
end
