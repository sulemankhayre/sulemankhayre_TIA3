require './src/tv'

describe Tv do
    describe '#get_name' do
    it 'returns the name input by the user' do
        allow(Tv).to receive(:gets) .and_return('sam')
        expect(Tv.get_tv).to eq('sam')
        end
    it 'raises an exception if name is empty' do
        allow(Tv).to receive(:gets) .and_return('  ', 'hello')
        expect{Tv.get_tv}.to raise_error(InvalidNameError)
        end
    end

end
describe Tv do
    describe '#get_direc' do
    it 'returns the name input by the user' do
        allow(Tv).to receive(:gets) .and_return('sam')
        expect(Tv.get_tv).to eq('sam')
        end
    it 'raises an exception if name is empty' do
        allow(Tv).to receive(:gets) .and_return('  ', 'hello')
        expect{Tv.get_tv}.to raise_error(InvalidNameError)
    end
end
end


