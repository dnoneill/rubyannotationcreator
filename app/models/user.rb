class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :wolftech_authenticatable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable
end
