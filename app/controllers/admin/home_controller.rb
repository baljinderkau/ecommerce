# class Admin::HomeController < AdminController
#     before_action :authenticate_user!
  
#     def index
#       # Fetch all user records
#       @users = User.all
#       @user_count = @users.count
#     end
  
#     def charts
#     end
  
#     def pages
#     end
#   end
  
class Admin::HomeController < AdminController
    before_action :authenticate_user!
  
    def index
      # Fetch records for each model (table)
      @users = User.all
      @models = {
        "Action Text Rich Texts" => ActionText::RichText.all,
        "Active Storage Attachments" => ActiveStorage::Attachment.all,
        "Active Storage Blobs" => ActiveStorage::Blob.all,
        "Active Storage Variant Records" => ActiveStorage::VariantRecord.all,
        "Activity Logs" => ActivityLog.all,

        "Cart Items" => CartItem.all,
        "Carts" => Cart.all,

        "Comments" => Comment.all,
        "Order Items" => OrderItem.all,
        "Orders" => Order.all,
        "Products" => Product.all,
        
        "Wallets" => Wallet.all
      }
      
      # Get the count of users
      @user_count = User.count
    end
  
    def charts
    end
  
    def pages
    end
  end
  