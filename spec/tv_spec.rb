require './src/tv'


describe Tv do
    describe '#get_name' do
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
    describe '#get_direc' do
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
    describe '#get_review' do
    it 'returns the review input by the user' do
        allow(Tv).to receive(:gets) .and_return('sam')
        expect(Tv.get_review).to eq('sam')
        end
    it 'raises an exception if review is empty' do
        allow(Tv).to receive(:gets) .and_return('  ', 'hello')
        expect{Tv.get_review}.to raise_error(InvalidNameError)
        end
    end
end

describe Tv do
    describe '#get_dob' do
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

    



