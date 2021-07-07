require "httparty"

class Merchants
  include HTTParty
  attr_accessor :merchant_array

  # gets list of all merchants
  def self.index
    url= "https://simpledebit.herokuapp.com/merchants"
    merchant_list = Merchants.get_resource(url)

    puts merchant_list.body
  end

  # get the list of transactions for a merchant
  def self.transactions_list

    url = "https://simpledebit.herokuapp.com/merchants/M28A9"
    transaction_list = Merchants.get_resource(url)
    transaction_list.body
  end

  def self.get_resource(url)
    HTTParty.get(url)
  end

end