class ReportAuthor < ApplicationRecord
  belongs_to :report
  belongs_to :author
end
