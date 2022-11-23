class CandidatesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @candidates = Candidate.all
  end

  # def create
  #   @role = Role.find(params[:role_id])
  #   @candidate = Candidate.new
  #   @candidate.stage = @role.stages.first
  #   if @candidate.save
      #to-do create new interviews for the stage interviewers
  #     redirect_to , :new, status: :see_other
  #   else
  #     , status: :unprocessable_entity
  #   end
  # end

  # def show
  #   @candidate = Candidate.find(params[:id])
  # end

  # def update
  #   @candidate = Candidate.find(params[:id])
  #   if @candidate.update(candidate_params)
  #     redirect_to , status: :see_other
  #   else
  #     , status: :unprocessable_entity
  #   end
  # end

  private

  def candidate_params
    params.require(:candidate).permit(:stage_id, :status, :first_name, :last_name)
  end
end
