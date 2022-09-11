# == Schema Information
#
# Table name: passive_evaluations
#
#  id                             :bigint           not null, primary key
#  appeals                        :integer
#  calculated_response_rate       :decimal(, )
#  declared_response_rate         :decimal(, )
#  denials                        :integer
#  denials_mute                   :integer
#  n_inst_pt                      :integer
#  number_evaluated_entities      :integer
#  number_partial_responses       :integer
#  number_requests                :integer
#  number_responses               :integer
#  number_responses_on_time       :integer
#  number_time_extension_requests :integer
#  created_at                     :datetime         not null
#  updated_at                     :datetime         not null
#  evaluation_id                  :bigint           not null
#
# Indexes
#
#  index_passive_evaluations_on_evaluation_id  (evaluation_id)
#
# Foreign Keys
#
#  fk_rails_...  (evaluation_id => evaluations.id)
#
require "test_helper"

class PassiveEvaluationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
