require_relative 'account'

class Statement 
  attr_reader :amount, :account, :timestamp

  def initialize(amount, account)
    @timestamp = Time.now.strftime("%d/%m/%Y")
    @account = account
    @amount = amount 
  end 

end 