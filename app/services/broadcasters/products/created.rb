class Broadcasters::Products::Created
    attr_reader :product
    
    def initialize(product)
        @product = product
    end

    def call
        update_products_count
        add_product_to_list
    end

    private

    def add_product_to_list
        Turbo::StreamsChannel.broadcast_append_to :products_list, target: "all-products", partial: 'products/product', locals: { product: @product }
    end

    def update_products_count
        Turbo::StreamsChannel.broadcast_update_to :products_list, target: 'products_count', partial: 'products/count', locals: { count:}
    end
end