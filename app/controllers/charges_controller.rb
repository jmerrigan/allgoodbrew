class ChargesController < ApplicationController
    before_action :authenticate_user!, only: [:create, :new]
    def new
    end
    
    def create
        @buyer = User.find(params[:user_id])
        @product = Product.find(params[:product_id])
        ProductMailer.with(buyer: current_user, seller: @product.shop_profile.user, product: @product).new_purchase.deliver_now
        
        customer = Stripe::Customer.create(
            :email => params[:stripeEmail],
            :source  => params[:stripeToken]
        )
        
        charge = Stripe::Charge.create(
            :customer    => customer.id,
            :amount      => @product.price,
            :description => @product.name,
            :currency    => 'aud'
        )
        @order = Order.create(
            {shop_profile_id: @product.shop_profile.id,
             user_id: @buyer.id,
             product_id: @product.id,
             product_title: @product.name,
             product_cost: @product.price
            }
        )
        
        @product.quantity = @product.quantity -= 1
        @product.save
            
    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_charge_path
    end

end
