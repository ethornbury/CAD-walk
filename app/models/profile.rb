class Profile < ApplicationRecord
  belongs_to :user

  validates :first_name, presence: true
  #validates :last_name,  presence: true
  #validates :display_name,  presence: true
  #validates :phone,      presence: true
  #validates :description, length: { maximum: 400 }
end