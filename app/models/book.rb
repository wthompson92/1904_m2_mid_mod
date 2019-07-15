class Book < ApplicationRecord
  has_many :author_book
  has_many :authors, through: :author_book
end
