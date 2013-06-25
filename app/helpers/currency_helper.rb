module CurrencyHelper
  def currency(amount)
    number_to_currency (amount / 100), local: 'us', precision: 0
  end
end