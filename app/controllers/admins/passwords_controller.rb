# frozen_string_literal: true

# Description/Explanation of Admins module
module Admins
    # Description/Explanation of PasswordsController class
    class PasswordsController < Devise::PasswordsController
      def create
        self.resource = resource_class.send_reset_password_instructions(resource_params)
        yield resource if block_given?
        if successfully_sent?(resource)
          redirect_to new_admin_password_path
          flash[:notice] = { type: 'info', message: 'Sent to mails please enter your email ' }
        else
            redirect_to new_admin_password_path
          flash[:notice] = { type: 'panel', message: 'There is not email in the system' }
        end
      end
  
      def update
        self.resource = resource_class.reset_password_by_token(resource_params)
        yield resource if block_given?
    
        if resource.errors.empty?
          resource.unlock_access! if unlockable?(resource)
          if Devise.sign_in_after_reset_password
            flash_message = resource.active_for_authentication? ? :updated : :updated_not_active
            set_flash_message!(:notice, flash_message)
            resource.after_database_authentication
            sign_in(resource_name, resource)
          else
            set_flash_message!(:notice, :updated_not_active)
          end
          respond_with resource, location: after_resetting_password_path_for(resource)
        else
          respond_with resource
        end
      end
    
    end
  end
  