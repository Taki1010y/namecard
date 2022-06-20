class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
<<<<<<< HEAD
         :recoverable, :rememberable, :validatable, :confirmable

=======
         :recoverable, :rememberable, :validatable, :confirmable 

  validates :name, {presence: true}
  validates :school, {presence: true}
  validates :age, {presence: true, numericality: true}
  validates :postal_code, {presence: true, numericality: true}
  validates :email, {presence: true}
  validates :address, {presence: true}
  validates :phone, {presence: true, numericality: true}
  validates :password, {presence: true, length: { in: 7..15 }}
>>>>>>> 9a6194e9ce97087f2f7857a59dedc31da15fc3b9
end
