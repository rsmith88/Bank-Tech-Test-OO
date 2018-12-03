require 'account'

describe Account do
  it 'should create an empty account for a user' do
    expect(subject.balance).to eq 0
  end
end
