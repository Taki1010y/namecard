class Company < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  belongs_to :category
  
  validates :name, {presence: true}
  validates :postal_code, {presence: true, numericality: true}
  validates :email, {presence: true}
  validates :address, {presence: true}
  validates :phone, {presence: true, numericality: true}
  validates :password, {presence: true, length: { in: 7..15 }}
end
