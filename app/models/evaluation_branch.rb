# == Schema Information
#
# Table name: evaluation_branches
#
#  id            :bigint           not null, primary key
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  branch_id     :bigint           not null
#  evaluation_id :bigint           not null
#
# Indexes
#
#  index_evaluation_branches_on_branch_id      (branch_id)
#  index_evaluation_branches_on_evaluation_id  (evaluation_id)
#
# Foreign Keys
#
#  fk_rails_...  (branch_id => branches.id)
#  fk_rails_...  (evaluation_id => evaluations.id)
#
class EvaluationBranch < ApplicationRecord
  belongs_to :evaluation
  belongs_to :branch
end
