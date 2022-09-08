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
require "test_helper"

class EvaluationBranchTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
