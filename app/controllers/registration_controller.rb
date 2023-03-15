class RegistrationController < ApplicationController
    def new
        @account=Account.new
    end

    def create
        @account=Account.new(params_account)
        if @account.save
            session[:account_id]=@account.id
            redirect_to "/" ,notice:"Successfully created account"
        else
            flash[:alert]="something went wrong"
            render :new
        end
    end

    private
    def params_account
        params.require(:account).permit(:mail ,:password ,:password_confirmation)
    end
end