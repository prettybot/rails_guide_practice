# == Schema Information
#
# Table name: paragraphs
#
#  id         :bigint           not null, primary key
#  content    :text(65535)
#  section_id :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Paragraph < ApplicationRecord
  belongs_to :section
end
