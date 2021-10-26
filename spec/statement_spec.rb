# frozen_string_literal: true

require 'statement'

describe Statement do
  let(:statement) { Statement.new(:amount, :account) }
  let(:timestamp) { Time.now.strftime('%d/%m/%Y') }

  it 'stores the date' do
    expect(statement.timestamp).to eq timestamp
  end

  it 'stores the amount' do
    expect(statement.amount).to eq :amount
  end

  it 'stores the account' do
    expect(statement.account).to eq :account
  end
end
