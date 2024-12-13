class UsersController < ApplicationController
  
  def admin_user

    email = SecureRandom.hex(5) + "@example.com"
    password = Devise.friendly_token[0, 20]
  
    user = User.new(email: email, password: password, role: 1)
  
    if user.save
      user.wallet.update(balance: 1000)
      flash[:success] = "User Created, Welcome to my Project"
  
      session[:portfolio_admin_user_email] = email
      session[:portfolio_admin_user_password] = password
    else
      flash[:error] = "Error, try again!"
      redirect_to root_path
    end
  end

  def add_balance
    @user = User.find(params[:id])
    wallet = @user.wallet
    amount = params[:amount].to_f
    
    Transaction.create(wallet: wallet, amount: amount)
    wallet.update(balance: wallet.balance + amount )
  end
end
