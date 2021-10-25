require 'statement'

describe Statement do 
  subject (:statement) { described_class.new }
  let(:timestamp) { Time.now.strftime('%d/%m/%Y') }

  it 'stores the transaction date' do
    expect(statement.timestamp).to eq timestamp
  end
end 