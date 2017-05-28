class User < ApplicationRecord
  has_secure_password
  has_many :days
  has_many :paydays

  def to_param
    username
  end
end
