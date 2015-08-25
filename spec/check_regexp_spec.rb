require_relative '../CheckReg.rb'

describe CheckReg do
  let(:exp) do
    CheckReg.new
  end

  it 'Должен принять 2 собаки' do
    exp = CheckReg.new
    exp.regexp = '@@abc'
    expect(exp.proverka).to eq(0)
  end

  it 'Не должен принимать букву и цифру' do
    expect(exp.proverka('a4')).to eq(nil)
  end
end