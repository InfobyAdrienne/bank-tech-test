require 'account'

describe Account do 
  subject (:account) { described_class.new }

  it 'should have a bank balance starting at zero' do 
    expect(account.start_balance).to eq(0)
  end 

  it 'should be able to make a deposit' do 
    account.deposit(50)
    expect(account.balance).to eq(50)
  end 

  it 'should be able to make a withdrawal' do 
    account.withdraw(50)
    expect(account.balance).to eq(-50)
  end 

  it 'should be able to make a deposit and withdrawal and get the correct total' do 
    account.deposit(50)
    account.withdraw(10)
    expect(account.balance).to eq(40)
  end 
end 
