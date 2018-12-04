# This class records all relevant info about a transaction
class Transaction
  def initialize(credit, debit, balance)
    @balance = '%.2f' % balance
    @debit = '%.2f' % debit if debit != nil
    @credit = '%.2f' % credit if credit != nil
    @date = Time.now.strftime('%d/%m/%Y')
  end

  attr_reader :date, :debit, :credit, :balance
end
