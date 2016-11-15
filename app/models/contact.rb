class Contact < ApplicationRecord


  before_validation :downcase_email

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  validates :name, presence: true
 

  validates :email, presence: true,                   
                    format: VALID_EMAIL_REGEX



end
