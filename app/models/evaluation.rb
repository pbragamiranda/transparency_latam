# == Schema Information
#
# Table name: evaluations
#
#  id               :bigint           not null, primary key
#  evaluation_type  :string
#  jurisdiction     :string
#  level_government :string
#  title_entity     :string
#  year             :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  report_id        :bigint           not null
#
# Indexes
#
#  index_evaluations_on_report_id  (report_id)
#
# Foreign Keys
#
#  fk_rails_...  (report_id => reports.id)
#
class Evaluation < ApplicationRecord
  LEVEL_GOVERNMENT= ["Municipal / Provincial / District", 
                     "Country / State / Departmental",
                     "National / Federal"]
                     
  belongs_to :report
  has_one :active_evaluation
  has_one :passive_evaluation
  validates :level_government, inclusion: { in: LEVEL_GOVERNMENT }
end
