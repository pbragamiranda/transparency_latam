class ReportsController < ApplicationController
  def index
    @reports = Report.all
  end

  def show
    @report = Report.find(params[:id])
  end

  def new
    @report = Report.new
  end

  def create
    @report = Report.new(report_params)
    if @report.save
      redirect_to reports_path
    else
      raise
      render :new
    end
  end

  private

  def report_params
    params.require(:report).permit(:original_title, :title_en, :title_es, :title_pt,
                                   :original_link, :theme, :year, :file,
                                   authors_attributes: %i[name category])
  end
end
