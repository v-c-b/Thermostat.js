require 'temp.rb'

describe Temp do
  it 'stores the temperature' do
    Temp.set_temp(23)
    expect(Temp.get_temp).to eq(23)
  end
  it 'has default of 20 temp when setting without arg' do
    Temp.set_temp
    expect(Temp.get_temp).to eq(20)
  end
  it 'has default of 20 temp' do
    expect(Temp.get_temp).to eq(20)
  end
end
