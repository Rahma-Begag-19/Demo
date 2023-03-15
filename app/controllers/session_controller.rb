class SessionController < ApplicationController
    def destroy
        session[:account_id]=nil
        redirect_to logout_path ,notice:"Logged out!"
    end
end