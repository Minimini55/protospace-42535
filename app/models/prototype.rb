class Prototype < ApplicationRecord
    belongs_to :user
    has_many :comments, dependent: :destroy
    has_one_attached :image
    
    validates :title, presence: true        # プロトタイプの名称
    validates :catch_copy, presence: true   # キャッチコピー
    validates :concept, presence: true      # コンセプト
    validates :image, presence: true        # 画像

end
