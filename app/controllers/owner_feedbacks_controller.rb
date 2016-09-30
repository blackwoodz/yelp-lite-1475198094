class OwnerFeedbacksController < ApplicationController
  def index
    @owner_feedbacks = OwnerFeedback.all
  end

  def show
    @owner_feedback = OwnerFeedback.find(params[:id])
  end

  def new
    @owner_feedback = OwnerFeedback.new
  end

  def create
    @owner_feedback = OwnerFeedback.new
    @owner_feedback.review_id = params[:review_id]
    @owner_feedback.owner_id = params[:owner_id]
    @owner_feedback.response = params[:response]

    if @owner_feedback.save
      redirect_to "/owner_feedbacks", :notice => "Owner feedback created successfully."
    else
      render 'new'
    end
  end

  def edit
    @owner_feedback = OwnerFeedback.find(params[:id])
  end

  def update
    @owner_feedback = OwnerFeedback.find(params[:id])

    @owner_feedback.review_id = params[:review_id]
    @owner_feedback.owner_id = params[:owner_id]
    @owner_feedback.response = params[:response]

    if @owner_feedback.save
      redirect_to "/owner_feedbacks", :notice => "Owner feedback updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @owner_feedback = OwnerFeedback.find(params[:id])

    @owner_feedback.destroy

    redirect_to "/owner_feedbacks", :notice => "Owner feedback deleted."
  end
end
