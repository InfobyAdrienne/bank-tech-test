class Account
  attr_reader :balance

  def initialize
    @balance = 0
    @timestamp = Time.now.strftime("%d/%m/%Y")
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
end 
