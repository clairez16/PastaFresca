class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :subscription

  validates :phone_number, uniqueness: true, format: { with: /\A(?:(?:\+|00)33|0)\s*[1-9](?:[\s.-]*\d{2}){4}\z/}
  validates :city, :name, length: { minimum: 2 }, format: {with: /\A[a-zA-Z]+(?:[\s-][a-zA-Z]+)*\z/}
end
