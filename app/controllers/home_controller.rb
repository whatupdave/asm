class HomeController < ApplicationController

  def index
    @batch = Batch.new
  end

end
