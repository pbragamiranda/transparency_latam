# == Schema Information
#
# Table name: authors
#
#  id         :bigint           not null, primary key
#  category   :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Author < ApplicationRecord
  CATEGORIES = ['NGO', 'Public Institution', 'Researcher']

  has_many :report_authors
  has_many :reports, through: :report_authors

  validates :name, :category, presence: true
  validates :category, inclusion: { in: CATEGORIES }
end
