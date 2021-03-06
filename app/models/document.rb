# == Schema Information
#
# Table name: documents
#
#  id         :bigint           not null, primary key
#  title      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Document < ApplicationRecord
  has_many :sections
  has_many :paragraphs, through: :sections
end
