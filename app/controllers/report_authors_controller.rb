class ReportAuthorsController < ApplicationController
  def new
    @authors = Author.all
    @reports = Report.all
    @report_author = ReportAuthor.new
  end

  def create
    @report_author = ReportAuthor.new(report_author_params)
    redirect_to reports_path if @report_author.save
  end

  private

  def report_author_params
    params.require(:report_author).permit(:author_id, :report_id)
  end
end
