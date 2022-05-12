class CompanyInfo < ApplicationRecord
    validates :name, {presence: true}
    validates :address, {presence: true}
    
    belongs_to :category
    PER = 15
    
    scope :display_list, -> (category, page) { 
        if category != "none"
        where(category_id: category).page(page).per(PER)
        else
        page(page).per(PER)
        end
    }


    mount_uploader :image, ImageUploader
    #acts_as_likeable
end

# そのユーザーが「いいね」をつけていればtrueを返し、つけていなければfalseを返す。
# product.liked_by?(user)

# 「いいね」をつけたユーザーを全て返す。
# product.likers(User)

# 「いいね」をつけたユーザーの数をカウントし、整数を返す。
# def change
#   add_column :#{Table_name}, :likers_count, :integer, :default => 0
# end

# product.likers_count
