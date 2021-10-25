require 'statement'
require 'account'

describe Statement do
  let(:statement) { Statement.new(:amount, :account) }
  let(:timestamp) { Time.now.strftime('%d/%m/%Y') }

  it 'stores the date' do
    expect(statement.timestamp).to eq timestamp
  end

end