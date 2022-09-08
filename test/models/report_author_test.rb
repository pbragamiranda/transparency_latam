# == Schema Information
#
# Table name: report_authors
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :bigint           not null
#  report_id  :bigint           not null
#
# Indexes
#
#  index_report_authors_on_author_id  (author_id)
#  index_report_authors_on_report_id  (report_id)
#
# Foreign Keys
#
#  fk_rails_...  (author_id => authors.id)
#  fk_rails_...  (report_id => reports.id)
#
require "test_helper"

class ReportAuthorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
