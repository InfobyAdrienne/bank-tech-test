require 'bank'

describe Bank do 

  it 'should have a bank balance starting at zero' do 
    bank = Bank.new
    expect(bank.start_balance).to eq(0)
  end 

end 
