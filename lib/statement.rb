# frozen_string_literal: true

require_relative 'account'

# This is the Statement class that helps generate and format the statement
class Statement
  attr_reader :amount, :account, :timestamp

  def initialize(amount, account)
    @timestamp = Time.now.strftime('%d/%m/%Y')
    @account = account
    @amount = amount
  end

  def balance
    @account.balance_after(self)
  end

  def format
    # if the amount is > 0 it goes in the credit column
    if @amount.positive?
      (puts "#{@timestamp}|| #{@amount} ||  ||  #{balance}")
    else
      (puts "#{@timestamp}||  || #{@amount.abs}  ||  #{balance}")
    end
  end
end
