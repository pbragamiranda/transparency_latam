class EvaluationsController < ApplicationController
  before_action :set_report

  def index
    @evaluations = Evaluation.where(report: @report)
  end

  def new
    @evaluation = Evaluation.new
  end

  def create
    @evaluation = Evaluation.new(evaluation_params)
    @evaluation.report = @report
    if @evaluation.save
      redirect_to reports_path 
    else
      render :new
    end
  end

  private

  def set_report
    @report = Report.find(params[:report_id])
  end

  def evaluation_params
    params.require(:evaluation).permit(:year, :level_government, :jurisdiction,
                                       :title_entity, :country_ids, :branch_ids)
  end
end
