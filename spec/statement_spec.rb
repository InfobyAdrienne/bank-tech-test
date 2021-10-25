require 'statement'
require 'account'

describe Statement do 
  subject (:statement) { described_class.new }
  let(:timestamp) { Time.now.strftime('%d/%m/%Y') }

  
end