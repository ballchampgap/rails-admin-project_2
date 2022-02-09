# frozen_string_literal: true

# Description/Explanation of Admins module
module Admins
    # Description/Explanation of SessionController class
    class SessionsController < Devise::SessionsController
      def create
        admin = Admin.find_by(email: sign_in_params[:email])
        if admin&.valid_password?(sign_in_params[:password])
          sign_in(:admin, admin)
          redirect_to admin_path
        else
          flash[:notice] = { type: 'panel', message: 'Invalid E-mail or Password' }
          redirect_to new_admin_session_path
        end
      end
  
      def destroy
        redirect_to admins_sign_in_path
      end
    end
  end
  