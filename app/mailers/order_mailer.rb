class OrderMailer < ActionMailer::Base
	default from: "info@teplomarket.com.ua"


	def order_confirmation order
		@order = order
		mail to: order.user.email, subject: "Ваше замовлення (##{order.id})"
	end
end