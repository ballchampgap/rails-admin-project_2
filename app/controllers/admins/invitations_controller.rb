# frozen_string_literal: true

# Description/Explanation of Admins module
module Admins
    # Description/Explanation of InvitationsControlle class
    class InvitationsController < Devise::InvitationsController
      # GET /resource/invitation/new
      layout false
      def new
      self.resource = resource_class.new
      end
  
      def create
        self.resource = invite_resource
        resource_invited = resource.errors.empty?
    
        yield resource if block_given?
    
        if resource_invited
          if is_flashing_format? && self.resource.invitation_sent_at
            set_flash_message :notice, :send_instructions, email: self.resource.email
            redirect_to admin_list_path
          end
        else
          respond_with_navigational(resource) { render :new, status: :unprocessable_entity }
        end
      end
  
      # GET /resource/invitation/accept?invitation_token=abcdef
      def edit
        set_minimum_password_length
        resource.invitation_token = params[:invitation_token]
        render(layout: false)
      end
  
      # PUT /resource/invitation
      def update
        raw_invitation_token = update_resource_params[:invitation_token]
        self.resource = accept_resource
        invitation_accepted = resource.errors.empty?
        if invitation_accepted
          if resource.class.allow_insecure_sign_in_after_accept
            flash_message = resource.active_for_authentication? ? :updated : :updated_not_active
            set_flash_message :notice, flash_message if is_flashing_format?
            resource.after_database_authentication
            resource.name = params[:admin][:name]
            resource.save
            sign_in(resource_name, resource)
            respond_with resource, location: after_accept_path_for(resource)
          else
            set_flash_message :notice, :updated_not_active if is_flashing_format?
            respond_with resource, location: new_session_path(resource_name)
          end
        else
          resource.invitation_token = raw_invitation_token
          respond_with_navigational(resource) { render :edit, status: :unprocessable_entity }
        end
      end
    
  
      # GET /resource/invitation/remove?invitation_token=abcdef
      def destroy
        resource.destroy
        set_flash_message :notice, :invitation_removed if is_flashing_format?
        redirect_to after_sign_out_path_for(resource_name)
      end
  
      def remove_admin
        admin = Admin.find(params[:id])
        admin.destroy
        redirect_to new_admin_invitation_path
      end
      
      def invitation_accepted
        resource.name = params[:admin][:name]
        resource.save
        sign_in(resource_name, resource)
        # redirect_to admin_path
      end
    end
  end
  