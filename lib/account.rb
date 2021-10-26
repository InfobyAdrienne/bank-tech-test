# frozen_string_literal: true

require_relative 'statement'

class Account
  START_BALANCE = 0
  HEADING = 'date || credit || debit || balance'

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
    @statements << Statement.new(-amount, self)
  end

  def balance_after(statement)
    index = @statements.find_index(statement)
    @statements[0..index].map(&:amount).sum
  end

  def print_statement
    puts HEADING
    @statements.reverse.map(&:format)
  end
end
