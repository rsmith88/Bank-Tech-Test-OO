require 'statement'

  describe Statement do
    it 'should be initialized with transactions as an argument' do
      statement = Statement.new(Array.new)
      expect(statement.transactions).to be_a Array
    end

end
