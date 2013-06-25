class EnsureStripeCustomer
  attr_reader :user, :stripe_token, :last4

  def initialize(user, stripe_token, last4)
    @user = user
    @stripe_token = stripe_token
    @last4 = last4
  end

  def ensure!
    if !user.customer_id?
      create!

    elsif user.last4 != last4
      update!
    end
  end

  def create!
    customer = Stripe::Customer.create(
      email: user.email,
      card:  stripe_token
    )
    user.customer_id = customer.id
    user.last4 = last4
    user.save!

    customer
  end

  def update!
    c = Stripe::Customer.retrieve(customer_id)
    c.card = stripe_token
    c.save
    c
  end
end