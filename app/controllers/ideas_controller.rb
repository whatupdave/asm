class IdeasController < ApplicationController

  def new
    @idea = Idea.new
  end

  def create
    @idea = Idea.new(new_idea_params)
    @idea.id = SecureRandom.uuid
    @idea.save
    redirect_to idea_path(@idea)
  end

  def show
    @idea = Idea.find(params.fetch(:id))
  end

  def update
    @idea = Idea.find(params.fetch(:id))
    @idea.update_attributes(idea_params)
    redirect_to idea_path(@idea)
  end

private

  def new_idea_params
    params.permit(:name, :pitch)
  end

  def idea_params
    params.permit(:name, :pitch, :description)
  end

end
