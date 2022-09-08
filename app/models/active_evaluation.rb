# == Schema Information
#
# Table name: active_evaluations
#
#  id                     :bigint           not null, primary key
#  calculated_complicance :decimal(, )
#  declared_compliance    :decimal(, )
#  number_institutions    :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  evaluation_id          :bigint           not null
#
# Indexes
#
#  index_active_evaluations_on_evaluation_id  (evaluation_id)
#
# Foreign Keys
#
#  fk_rails_...  (evaluation_id => evaluations.id)
#
class ActiveEvaluation < ApplicationRecord
  belongs_to :evaluation
end
