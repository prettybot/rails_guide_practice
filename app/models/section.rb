class Section < ApplicationRecord
  has_many :paragraphs
  belongs_to :document
end
