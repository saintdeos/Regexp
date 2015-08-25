require_relative '../CheckReg.rb'

describe CheckReg do
  let(:exp) do
    CheckReg.new
  end

  it 'Должен принять м.букву в нач. и сод-ть м.буквы, цифры и зн.подчерк-я ' do
    exp = CheckReg.new
    exp.regexp = 'a4bc_'
    expect(exp.proverka).to eq(0)
  end

  it 'Должен принять б.букву в начале, сод-ть буквы, цифры и зн.подчерк-я' do
    exp = CheckReg.new
    exp.regexp = 'Ab_4Cd'
    expect(exp.proverka).to eq(0)
  end

  it 'Должен принять 2 собаки и маленькую букву в начале' do
    exp = CheckReg.new
    exp.regexp = '@@ab_c'
    expect(exp.proverka).to eq(0)
  end

  it 'Должен принять собаку и маленькую букву в начале' do
    exp = CheckReg.new
    exp.regexp = '@ab_c'
    expect(exp.proverka).to eq(0)
  end

  it 'Должен только большие буквы' do
    exp = CheckReg.new
    exp.regexp = 'ABC'
    expect(exp.proverka).to eq(0)
  end

  it 'Не должен принимать цифру в начале' do
    exp = CheckReg.new
    exp.regexp = '4bc'
    expect(exp.proverka).to eq(nil)
  end

  it 'Не должен принимать м.букву в начале и б.букву потом' do
    exp = CheckReg.new
    exp.regexp = 'abC'
    expect(exp.proverka).to eq(nil)
  end

  it 'Не должен принимать собачек разделенных или не в начале строки' do
    exp = CheckReg.new
    exp.regexp = 'a@b@c'
    expect(exp.proverka).to eq(nil)
  end

  it 'Не должен принимать зн.подч-я в начале строки' do
    exp = CheckReg.new
    exp.regexp = '_abc'
    expect(exp.proverka).to eq(nil)
  end

    it 'Не должен принимать цифру после собаки' do
    exp = CheckReg.new
    exp.regexp = '@@4abc'
    expect(exp.proverka).to eq(nil)
  end
end
