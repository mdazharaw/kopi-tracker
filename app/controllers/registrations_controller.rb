class RegistrationsController < Devise::RegistrationsController

    private
  
      def sign_up_params
        params.require(:customer).permit(:email, :password, :name)
      end
  end