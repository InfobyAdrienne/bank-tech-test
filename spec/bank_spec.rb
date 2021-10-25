require 'bank'

describe Bank do 

  it 'should have a bank balance starting at zero' do 
    bank = Bank.new
    expect(bank.start_balance).to eq(0)
  end 

  it 'should be able to add money to the account' do 
    bank = Bank.new 
    expect(bank.deposit(50)).to eq(50)
  end 

  it 'should be able to make a withdrawal' do 
    bank = Bank.new 
    expect(bank.withdraw(50)).to eq(-50)
  end 
  

end 
