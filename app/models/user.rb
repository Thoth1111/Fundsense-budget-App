class User < ApplicationRecord

  devise :database_authenticatable, :trackable, :registerable, :timeoutable, :lockable, :confirmable,
         :recoverable, :rememberable, :validatable
end
