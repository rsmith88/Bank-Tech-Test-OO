require 'statement'

describe Statement do
  describe '#initialize' do
    it 'should be initialized with transactions as an argument' do
      statement = Statement.new([])
      expect(statement.transactions).to be_a Array
    end
  end

  describe '#print' do
    it 'should print the transactions with date, credit, debit, and total balance' do
      account = Account.new
      account.deposit(1000)
      statement = Statement.new(account.transactions)
      expect { statement.print }.to output(
        "Date       || credit || debit || balance \n03/12/2018 ||  1000  ||  0  ||  1000\n"
      )
        .to_stdout
    end
  end
end
