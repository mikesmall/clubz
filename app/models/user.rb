class User < ApplicationRecord
  has_secure_password

  has_many :clubs

  validates :name, presence: true, uniqueness: true

  # This is a CONSTANT.
  # It should always be ALL-CAPS.
  ALLOWED_ROLES = ["wizard", "hobbit"]
  # Next we will create a column on our USER TABLE for this, called ROLE.

end
