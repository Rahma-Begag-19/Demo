#mail:string
#password_digest:string

#password:string virtual
#password_confirmation:string

class Account < ApplicationRecord
    has_secure_password

    validates :mail,presence: true,format: {with: /\A[^@\s]+@[^@\s]+\z/,message:"must be a valid address" }
end
