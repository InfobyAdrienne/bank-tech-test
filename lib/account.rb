class Account
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def start_balance
    @balance = 0
  end 

  def deposit(amount)
    @balance += amount
  end 

  def withdraw(amount)
    @balance -= amount
  end 

  # def format
  #   @balance > 0 ? (puts "#{@timestamp}|| #{@amount} ||  ||  #{balance}")
  #     : (puts "#{@timestamp}||  || #{@amount}  ||  #{balance}")
  #   end
end 
