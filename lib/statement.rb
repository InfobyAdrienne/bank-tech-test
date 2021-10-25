require_relative 'account'

class Statement 
  attr_reader :amount, :account, :timestamp

  def initialize(amount, account)
    @timestamp = Time.now.strftime("%d/%m/%Y")
    @account = account
    @amount = amount 
  end 

  def balance
    @account.balance_after(self)
  end

  def format
    # if the amount is > 0 it goes in the credit column 
    @amount > 0 ? (puts "#{@timestamp}|| #{@amount} ||  ||  #{balance}")
    : (puts "#{@timestamp}||  || #{@amount.abs}  ||  #{balance}")
  end

end