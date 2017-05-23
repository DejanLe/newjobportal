class ProposalsController < ApplicationController
	def index
	end
	def create
		@gig = Gig.find(params[:gig_id])
		@proposal = @gig.proposals.build(proposal_params)
	end

	private
	def proposal_params
		params.require(:proposal).permit(:bid, :description)
	end
end
