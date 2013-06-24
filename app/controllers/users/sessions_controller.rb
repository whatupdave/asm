class Users::SessionsController < Devise::SessionsController

  def show
    if signed_in?
      render json: current_user
    else
      render :nothing => true, :status => :unauthorized
    end
  end

end
