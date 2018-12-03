# This class records all relevant info about a transaction
class Transaction
  def initialize(credit, debit, balance)
    @balance = balance
    @debit = debit
    @credit = credit
    @date = Time.now.strftime('%d/%m/%Y')
  end

  attr_reader :date, :debit, :credit, :balance
end
