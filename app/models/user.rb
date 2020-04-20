class User < ActiveRecord::Base

  has_secure_password #<- Allows us to use AR method= authenticate, takes password as plain string and checks it against bcrypt's hashing algorithm to make sure its the correct pword
  has_many :journal_entries

  

end
