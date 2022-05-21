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
end
