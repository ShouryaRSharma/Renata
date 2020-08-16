class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # admin@admin.com -> self.email.split('a') -> ["admin", "admin.com"] -> [0] -> 'admin'.capitalize
  def username
    return email.split("@")[0].capitalize
  end
end
