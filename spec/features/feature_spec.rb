require 'account'
require 'statement'
require 'transaction'

describe "Feature" do
  it 'allows users to interact with account' do
    account = Account.new
    account.deposit(1000)
    account.deposit(2000)
    account.withdraw(500)
    expect { account.statement.print }.to output(
      "Date       || credit || debit || balance \n03/12/2018 ||  1000  ||  0  ||  1000\n03/12/2018 ||  2000  ||  0  ||  3000\n03/12/2018 ||  0  ||  500  ||  2500\n"
    )
      .to_stdout
    expect(account.statement.print).to eq("Thank you for choosing Tech-Test Bank!")
  end
end
