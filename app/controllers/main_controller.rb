class MainController < ApplicationController
    def index
        
        if session[:account_id]
            @account=Account.find_by(id: session[:account_id])
        end
        #flash[:notice]="logged in successfuly"
        #flash[:alert]="invalid password"
    end 
end
