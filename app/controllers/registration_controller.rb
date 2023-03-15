class RegistrationController < ApplicationController
    def new
        @account=Account.new
    end
end