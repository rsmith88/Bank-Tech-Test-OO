# This class records all relevant info about a transaction
class Transaction
  def initialize(credit, debit, balance)
    @balance = format('%.2f', balance)
    @debit = format('%.2f', debit) unless debit.nil?
    @credit = format('%.2f', credit) unless credit.nil?
    @date = Time.now.strftime('%d/%m/%Y')
  end

  attr_reader :date, :debit, :credit, :balance
end
