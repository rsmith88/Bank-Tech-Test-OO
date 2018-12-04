require 'statement'

describe Statement do
  describe '#initialize' do
    it 'should be initialized with transactions as an argument' do
      statement = Statement.new([])
      expect(statement.transactions).to be_a Array
    end
  end

  describe '#print' do
    it 'prints transactions with date, credit, debit, & balance' do
      account = Account.new
      account.deposit(1000)
      statement = Statement.new(account.transactions)
      expect { statement.print }.to output(
        "Date       || credit || debit || balance \n#{Time.now.strftime('%d/%m/%Y')} ||  1000.00  ||    ||  1000.00\n"
      )
        .to_stdout
    end

    it 'prints transactions with date, credit, debit, & balance (stubbed)' do
      transaction = double(:transaction, credit: ('%.2f' % 1000), debit: nil, balance: ('%.2f' % 1000), date: '03/12/2018')
      account = double(:account, transactions: [transaction])
      statement = Statement.new(account.transactions)
      expect { statement.print }.to output(
        "Date       || credit || debit || balance \n03/12/2018 ||  1000.00  ||    ||  1000.00\n"
      )
        .to_stdout
    end

  end
end
