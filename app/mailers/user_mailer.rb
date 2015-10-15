class UserMailer < ApplicationMailer
  default from: "julian.philip@orange.fr"

  def order_confirmation_shopper(order)
    @order = order

    @greeting = "Hi"

    mail to: @order.shopper.user.email, subject: "Demande de commande"
  end

  def order_confirmation_user(order)
    @order = order

    @greeting = "Hi"

    mail to: @order.user.email, subject: "Demande de commande"
  end

  def list_user(order)
    @order = order

    @greeting = "La liste de produits est disponible!"

    mail to: @order.user.email, subject: "Liste de produits"
  end

end
