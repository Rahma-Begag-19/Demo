class MainController < ApplicationController
    def index
        flash[:notice]="logged in successfuly"
        flash[:alert]="invalid password"
    end 
end
