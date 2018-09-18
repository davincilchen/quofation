class UserMailer < ApplicationMailer
  default from: "quofation<tripstaiwan@gmail.com>"
   def notify_order_create(order)
    @order = order
    @content = "Your order is created. Thank you!"
     mail to: order.user.email,
    subject: "quofation | 訂單成立: #{@order.id}"
  end
end
