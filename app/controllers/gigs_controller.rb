class GigsController < ApplicationController
  before_action :set_gig, only: [:show, :edit, :update, :destroy]



	 def index
	 	@gigs = Gig.all.order("created_at DESC").page(params[:page]).per(15)
	 	end

	 	def new 
	 	@gig = Gig.new 
	 	end
 
	 	def create
	 		@gig = Gig.new(gig_params)
			  respond_to do |format|
		      if @gig.save
		        format.html { redirect_to @gig, notice: 'Post was successfully created.' }
		        format.json { render :show, status: :created, location: @gig }
		      else
		        format.html { render :new }
		        format.json { render json: @gig.errors, status: :unprocessable_entity }
		      end
   		 end
	 	end
	 	
	 	def show 
	 		@gig = Gig.find(params[:id])
	 	end

 private
 def set_gig
      @gig = Gig.find(params[:id])
    end
 def gig_params 
 	params.require(:gig).permit(:name, :description, :budget, :location, :open)

 end
end

 