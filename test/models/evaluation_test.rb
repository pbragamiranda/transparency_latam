# == Schema Information
#
# Table name: evaluations
#
#  id               :bigint           not null, primary key
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
require "test_helper"

class EvaluationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
