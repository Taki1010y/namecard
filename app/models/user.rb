class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable, :confirmable 

  has_many :company_infos, dependent: :destroy 
  has_many :favorites, dependent: :destroy
  acts_as_liker
  

  def already_favorited?(company_info)
    self.favorites.exists?(company_info_id: company_info.id)
  end
  
  validates :name, {presence: true}
  validates :school, {presence: true}
  validates :age, {presence: true, numericality: true}
  validates :postal_code, {presence: true, numericality: true}
  validates :email, {presence: true}
  validates :address, {presence: true}
  validates :phone, {presence: true, numericality: true}
  validates :password, {presence: true, length: { in: 7..15 }}
end
