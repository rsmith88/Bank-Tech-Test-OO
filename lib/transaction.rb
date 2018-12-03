class Transaction
  def initialize(debit, credit, balance)
    @balance = balance
    @debit = debit
    @credit = credit
    @date = Time.now.strftime("%d/%m/%Y")
  end

  attr_reader :date, :debit, :credit, :balance

end
