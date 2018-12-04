require 'account'
require 'statement'
require 'transaction'

describe 'Feature' do
  it 'allows users to interact with account' do
    date = Time.now.strftime('%d/%m/%Y')
    account = Account.new
    account.deposit(1000)
    account.deposit(2000)
    account.withdraw(500)
    statement = Statement.new(account.transactions)
    expect { statement.print }.to output(
      "Date       || credit || debit || balance \n#{date} ||  1000.00  ||    ||  1000.00\n#{date} ||  2000.00  ||    ||  3000.00\n#{date} ||    ||  500.00  ||  2500.00\n"
    )
      .to_stdout
  end
end
