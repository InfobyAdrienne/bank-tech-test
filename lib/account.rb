require_relative 'statement'

class Account
  START_BALANCE = 0 

  attr_reader :balance, :statements

  def initialize
    @balance = 0
    @statements = []
  end

  def start_balance
    @balance = START_BALANCE
  end 

  def deposit(amount)
    @balance += amount
    @statements << Statement.new(amount, self)
  end 

  def withdraw(amount)
    @balance -= amount
    @statements << Statement.new(amount, self)
  end
end 
