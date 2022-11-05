# == Schema Information
#
# Table name: branches
#
#  id         :bigint           not null, primary key
#  name_en    :string
#  name_es    :string
#  name_pt    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Branch < ApplicationRecord
  has_many :evaluation_branches
  has_many :evaluations, through: :evaluation_branches
end
