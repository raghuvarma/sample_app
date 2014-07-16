class RegistrationsController < Devise::RegistrationsController
    def create
      
      if verify_recaptcha
        super
      else
        #super
        build_resource
        clean_up_passwords(resource)
        flash[:alert] = "There was an error with the recaptcha code below. Please re-enter the code."      
        flash.delete :recaptcha_error
        render :new
        #redirect_to :new
      end
      
      #respond_to do |format|
        #if verify_recaptcha(:model => @user, :message => "Oh! It's error with reCAPTCHA!") && @user.save
          # ...
        #else
          # ...
        #end
      #end
      
    end
    
    
    
  end