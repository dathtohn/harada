class SessionsController < ApplicationController
	http_basic_authenticate_with name: "eric", password: "liue", except: :destroy
	# force_ssl except: :destroy

  def create
  	sign_in
  	redirect_to collections_path
  end

  def destroy
  	sign_out
  	redirect_to root_path
  end
end