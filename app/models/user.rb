class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable, :confirmable 

  #acts_as_liker
end

# 商品に対して「いいね」をつける。
# user.like!(product)

# 商品に対する「いいね」を解除する。
# user.unlike!(product)

# 商品に対する「いいね」の状態を現在の状態から逆にする。
# user.toggle_like!(product)

# 商品に対して「いいね」をつけていればtrueを返し、つけていなければfalseを返す。
# user.likes?(product)

# 「いいね」の数をカウントし、整数を返す。
# def change
#   add_column :#{Table_name}, :likees_count, :integer, :default => 0
# end

# user.likees_count
