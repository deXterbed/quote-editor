class User < ApplicationRecord
  belongs_to :company

  # Include default devise modules. Others available are:
  # :registerable, :confirmable, :lockable, :timeoutable, :trackable,
  # :recoverable, :rememberable and :omniauthable
  devise :database_authenticatable, :validatable

  def name
    email.split("@").first.capitalize
  end
end
