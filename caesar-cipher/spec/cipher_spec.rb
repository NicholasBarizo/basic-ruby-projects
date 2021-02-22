require './lib/cipher'

describe '#cipher' do
  it 'shifts lowercase letters by 2' do
    expect(cipher('abc xyz', 2)).to eql('cde zab')
  end
  it 'shifts lowercase letters by -2' do
    expect(cipher('abc xyz', -2)).to eql('yza vwx')
  end
  it 'shifts uppercase letters by 2' do
    expect(cipher('ABC XYZ', 2)).to eql('CDE ZAB')
  end
  it 'shifts uppercase letters by -2' do
    expect(cipher('ABC XYZ', -2)).to eql('YZA VWX')
  end
  it 'ignores special characters' do
    expect(cipher('!@#$%^&*', 2)).to eql('!@#$%^&*')
  end
  it 'works with large shift' do
    expect(cipher('abc ABC xyz XYZ', 106)).to eql('cde CDE zab ZAB')
  end
end
