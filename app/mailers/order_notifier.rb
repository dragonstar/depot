class OrderNotifier < ActionMailer::Base
  default :from => "Charles Bacon charles@seitech.co.uk"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.received.subject
  #
  def received(order)
    #@greeting = "Hi"
    @order = order
    mail :to => order.email, :subject => 'Order confirmation'
  end

  def shipped(order)
    @order = order
    mail :to => order.email, :subject => 'Pragmatic Store Order Shipped'
  end
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.shipped.subject
  #
  def shipped
    @greeting = "Hi"

    mail :to => "to@example.org"
  end
end
