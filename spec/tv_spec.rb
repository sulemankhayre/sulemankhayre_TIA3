require './src/tv'


describe Tv do
    describe '#getname' do
    it 'returns the name input by the user' do
        allow(Tv).to receive(:gets) .and_return('sam')
        expect(Tv.gettv).to eq('sam')
        end
    it 'raises an exception if name is empty' do
        allow(Tv).to receive(:gets) .and_return('  ', 'hello')
        expect{Tv.gettv}.to raise_error(InvalidNameError)
        end
    end

end
describe Tv do
    describe '#getdirec' do
    it 'returns the name input by the user' do
        allow(Tv).to receive(:gets) .and_return('sam')
        expect(Tv.getdirec).to eq('sam')
        end
    it 'raises an exception if name is empty' do
        allow(Tv).to receive(:gets) .and_return('  ', 'hello')
        expect{Tv.getdirec}.to raise_error(InvalidNameError)
        end
    end
end

describe Tv do
    describe '#getreview' do
    it 'returns the review input by the user' do
        allow(Tv).to receive(:gets) .and_return('sam')
        expect(Tv.getreview).to eq('sam')
        end
    it 'raises an exception if review is empty' do
        allow(Tv).to receive(:gets) .and_return('  ', 'hello')
        expect{Tv.getreview}.to raise_error(InvalidNameError)
        end
    end
end

describe Tv do
    describe '#getdob' do
    it 'returns the name input by the user' do
        allow(Tv).to receive(:gets) .and_return('sam')
        expect(Tv.gettv).to eq('sam')
        end
    it 'raises an exception if name is empty' do
        allow(Tv).to receive(:gets) .and_return('  ', 'hello')
        expect{Tv.gettv}.to raise_error(InvalidNameError)
        end

    
    end
end
#     describe self.read do
#     describe do
#     it testIO = StringIO.new do
#     sutObject.writeStuffTo testIO 
#     testIO.string.should == "Hello, world!"

# end

    



