class EvaluationBranchesController < ApplicationController
	def new
	  @branchs = Branch.all
	  @evaluations = Evaluation.all
	  @evaluation_branch = EvaluationBranch.new
	end

	def create
	  @evaluation_branch = EvaluationBranch.new(evaluation_branch_params)
	  redirect_to root_path if @evaluation_branch.save
	end

	private

	def evaluation_branch_params
	  params.require(:evaluation_branch).permit(:evaluation_id, :branch_id)
	end
end
