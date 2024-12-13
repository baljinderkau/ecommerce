class Product < ApplicationRecord

    # broadcasts_to ->(product) { :products_list }
    # after_create_commit { broadcast_append_to :products_list }
    # after_update_commit { broadcast_replace_to :products_list }
    # after_destroy_commit { broadcast_remove_to :products_list }

    # Possible Scaling on future versions

    enum category: {
        books: 0,
        clothes: 1,
        electronics: 2,
        others: 3
    }

    belongs_to :user

    has_many :favorites, class_name: 'Favorite'

    has_many :cart_items
    has_many :carts, through: :cart_items
    has_many :comments
    
    # belongs_to :category

    validates :name, presence: true
    validates :quantity, numericality: { only_integer: true}
    validates :price, numericality: { greater_than_or_equal_to: 0 }
    validates :description, presence: true

    has_many :activity_logs, as: :trackable, dependent: :destroy

    # active storage image
    has_one_attached :image

    # convert on webp image
    def image_webp
        image.variant(format: "webp")
    end
end
