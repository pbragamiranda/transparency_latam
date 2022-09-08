# == Schema Information
#
# Table name: evaluation_countries
#
#  id            :bigint           not null, primary key
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  country_id    :bigint           not null
#  evaluation_id :bigint           not null
#
# Indexes
#
#  index_evaluation_countries_on_country_id     (country_id)
#  index_evaluation_countries_on_evaluation_id  (evaluation_id)
#
# Foreign Keys
#
#  fk_rails_...  (country_id => countries.id)
#  fk_rails_...  (evaluation_id => evaluations.id)
#
require "test_helper"

class EvaluationCountryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
