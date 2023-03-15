class RegistrationController < ApplicationController
    def new
        @account=Account.new
    end

    def create
        @account=Account.new(params_account)
        if @account.save
           redirect_to root_path ,notice:"Successfully created account"
        else
            flash[:alert]="something went wrong"
            render :new
        end
    end


    def params_account
        params.require(:account).permit(:mail ,:passwor ,:password_confirmation)
    end
end