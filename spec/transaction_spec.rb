describe Transaction do

  it 'creates a new transaction that stores time' do
    transaction = Transaction.new(0, 0, 0)
    expect(transaction.date).to eq (Time.now.strftime("%d/%m/%Y"))
  end

end
