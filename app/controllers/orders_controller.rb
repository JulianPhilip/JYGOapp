class OrdersController < ApplicationController
  # before_action :verification

  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
    # UserMailer.list_user(@order).deliver
    # send_sms_list(@order.shopper, @order.user)
  end

  def show_all
    @user = current_user
   if current_user.shopper
      @shopper = current_user.shopper
    else
      redirect_to not_shopper_path
    end
  end

  def mes_livraisons
    @user = current_user
  end

  def new
  end

  def create
    shopper = Shopper.find(params[:shopper_id])
    date = params[:date]
    # send mail
    @order = Order.create(shopper: shopper, date: date, user: current_user)

    UserMailer.order_confirmation_shopper(@order).deliver
    # send_sms(shopper)

    redirect_to edit_order_path(@order)
  end

  def edit
    @order = Order.find(params[:id])
    @products = Product.all
    @categories = Product.categories
  end

  def update
    @order = Order.find(params[:id])
    @order.update(order_params)
    UserMailer.order_confirmation_user(@order).deliver
    # send_sms_list(@order.shopper, @order.user)
    redirect_to edit_order_path(@order)
  end

  def order_user
    if current_user.shopper
      @shopper = current_user.shopper
    else
      redirect_to not_shopper_path
    end
  end

  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to order_url, notice: 'The order was successfully destroyed.' }
      format.json { head :no_content }
    end
    redirect_to orders_path
  end

  def not_shopper
  end

  private

  def order_params
    params.require(:order).permit(ordered_products_attributes: [:product_id, :quantity])
  end

  def send_sms(shopper)
  account_sid = ENV['TWILIO_SID']
  auth_token = ENV['TWILIO_AUTHTOKEN']

  client = Twilio::REST::Client.new account_sid, auth_token
  from = "+33644605096"
  client.account.messages.create(
    :from => from,
    :to => shopper.user.phone_number,
    :body => "Bonjour #{shopper.user.firstname} , Vous avez une nouvelle commande à honorer. Rendez-vous sur jygo.herokuapp.com"
    )

  end

  def send_sms_list(shopper, user)
  account_sid = ENV['TWILIO_SID']
  auth_token = ENV['TWILIO_AUTHTOKEN']

  client = Twilio::REST::Client.new account_sid, auth_token
  from = "+33644605096"
  client.account.messages.create(
    :from => from,
    :to => shopper.user.phone_number,
    :body => "Bonjour #{shopper.user.firstname} , La liste de produits de #{user.firstname} est désormais disponible. Rendez-vous sur jygo.herokuapp.com"
    )
  end
end
