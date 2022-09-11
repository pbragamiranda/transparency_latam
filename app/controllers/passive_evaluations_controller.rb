class PassiveEvaluationsController < ApplicationController
	before_action :set_report_and_evaluation

	def new
	  @passive_evaluation = PassiveEvaluation.new
	end

	def create
	  @passive_evaluation = PassiveEvaluation.new(passive_evaluation_params)
	  @passive_evaluation.evaluation = @evaluation
	  redirect_to report_evaluations_path(@report) if @passive_evaluation.save
	end

	private

	def set_report_and_evaluation
		@report = Report.find(params[:report_id])
		@evaluation = Evaluation.find(params[:evaluation_id])
	end

	def passive_evaluation_params
	  params.require(:passive_evaluation).permit(:number_evaluated_entities, :number_responses,
	  																					 :number_requests, :number_responses_on_time,
	  																					 :number_partial_responses, :denials, :denials_mute,
	  																					 :appeals, :n_inst_pt, :declared_response_rate,
	  																					 :calculated_response_rate, :number_time_extension_requests)
	end
end
