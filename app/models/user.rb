class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :registerable, :confirmable, :lockable, :timeoutable, :trackable,
  # :recoverable, :rememberable and :omniauthable
  devise :database_authenticatable, :validatable
end
