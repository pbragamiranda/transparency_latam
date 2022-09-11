class ActiveEvaluationsController < ApplicationController
	before_action :set_report_and_evaluation

	def new
	  @active_evaluation = ActiveEvaluation.new
	end

	def create
	  @active_evaluation = ActiveEvaluation.new(active_evaluation_params)
	  @active_evaluation.evaluation = @evaluation
	  redirect_to report_evaluations_path(@report) if @active_evaluation.save
	end

	private

	def set_report_and_evaluation
		@report = Report.find(params[:report_id])
		@evaluation = Evaluation.find(params[:evaluation_id])
	end

	def active_evaluation_params
	  params.require(:active_evaluation).permit(:number_institutions, :declared_compliance,
	  																					 :calculated_complicance)
	end
end
