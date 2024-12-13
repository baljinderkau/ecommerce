# class AdminController < ActionController::Base
#     layout 'admin'
    
# end



class AdminController < ActionController::Base
    layout 'admin'
  
    # Method to fetch all records for the admin view
    def fetch_all_records
      @models = [
        User, Admin, Product, Category, Order, OrderItem, Cart, CartItem, Wallet, Comment, ActivityLog
      ]
  
      # Fetch all records for each model and store them in @records
      @records = @models.map do |model|
        { model.name => model.all }
      end
    end
  end
  