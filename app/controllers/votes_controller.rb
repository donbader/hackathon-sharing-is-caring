class VotesController < ApplicationController
  def create
    Vote.create!(
      contact_no: params[:contact_no],
      amount: params[:amount],
      charity_id: params[:charity_id],
      status: "created",
    )

    redirect_to action: "/"
  end
end
