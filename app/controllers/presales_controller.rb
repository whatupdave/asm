class PresalesController < ApplicationController
  before_action :authenticate_user!, only: [:new]

  def new
    @idea = Idea.find_by(slug: params.fetch(:idea_id))
    @presale = @idea.presales.new
    @presale.user = current_user
  end

  def create
    params.require(:stripeToken)
    params.require(:last4)
    params.require(:amount)

    @idea = Idea.find_by(slug: params.fetch(:idea_id))

    customer = EnsureStripeCustomer.new(
      current_user,
      params[:stripeToken],
      params[:last4],
    ).ensure!

    @presale = @idea.presales.new(
      amount: params[:amount]
    )
    @presale.user = current_user
    if @presale.save
      redirect_to idea_path(@idea.slug)
    else
      render :new
    end
  end
end