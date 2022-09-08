# == Schema Information
#
# Table name: reports
#
#  id             :bigint           not null, primary key
#  original_link  :string
#  original_title :string
#  region         :string           default("Latin American")
#  theme          :string
#  title_en       :string
#  title_es       :string
#  title_pt       :string
#  year           :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
require "test_helper"

class ReportTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
