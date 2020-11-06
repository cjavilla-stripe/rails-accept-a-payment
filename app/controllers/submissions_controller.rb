class SubmissionsController < ApplicationController
  def index
  end

  def new
  end

  def show
    @submission = Submission.find(params[:id])
  end

  def create
    @submission = Submission.new(form_params)
    if @submission.save
      # SubmissionMailer.receipt(@submission).deliver_now
      # SubmissionMailer.newsubmission(@submission).deliver_now
      redirect_to @submission
    else
      flash.now[:error] = "Oops, something went wrong with your submission. Please try again!"
      render :new
    end
  end

  def form_params
    params.require(:submission).permit(
      :title,
      :stripe_payment_id
    )
  end
end
