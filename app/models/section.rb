# == Schema Information
#
# Table name: sections
#
#  id          :bigint           not null, primary key
#  title       :string(255)
#  document_id :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Section < ApplicationRecord
  has_many :paragraphs
  belongs_to :document
end
