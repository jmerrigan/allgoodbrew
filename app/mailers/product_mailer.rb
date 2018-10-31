class ProductMailer < ApplicationMailer

    def new_purchase
        @buyer = params[:buyer]
        @seller = params[:seller]
        @product = params[:product]
        mail(to:[@buyer.email, @seller.email], subject: 'Beer coming your way!')
    end

end
