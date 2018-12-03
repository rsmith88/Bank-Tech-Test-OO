require 'account'

describe Account do
  it 'should create an empty account for a user' do
    expect(subject.balance).to eq 0
  end

  it 'should let a user deposit a sum of money' do
    subject.deposit(100)
    expect(subject.balance).to eq 100
  end

  it 'should let a user withdraw a sum of money' do
    subject.deposit(200)
    subject.withdraw(50)
    expect(subject.balance).to eq 150
  end

end
