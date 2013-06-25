class IdeasController < ApplicationController
  respond_to :html, :json

  before_action :authenticate_user!, only: [:new, :create, :update]

  def new
    @idea = Idea.new
    @idea.user = current_user
  end

  def index
    @ideas = Idea.approved
  end

  def create
    @idea = Idea.new(new_idea_params)
    @idea.user = current_user
    if @idea.valid?
      @idea.save
      redirect_to idea_path(@idea)
    else
      render :new
    end
  end

  def show
    @idea = Idea.find_by(slug: params.fetch(:id))

    respond_to do |format|
      format.html { render }
      format.json { render json: @idea }
    end
  end

  def edit
    @idea = Idea.find(params.fetch(:id))

    respond_to do |format|
      format.html { render }
      format.json { render json: @idea }
    end
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
