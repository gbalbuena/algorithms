RSpec.shared_examples :a_union_find_algorithm do |param1|
  let(:obj) { described_class.new(9) }
  let(:expectation) { param1 ||= [0, 2, 2, 3, 4, 5, 6, 7, 8, 9] }

  describe "#initialize" do
    it { expect(obj.ids.count).to eq 10 }
  end

  describe '#union' do
    before(:each) { obj.union(1,2) }

    it { expect(obj.ids).to eq expectation }
  end

  describe '#connected' do
    before(:each) do
      obj.union(1,2)
      obj.union(1,3)
      obj.union(4,6)
      obj.union(4,7)
    end

    it { expect(obj.connected(1, 2)).to be true }
    it { expect(obj.connected(1, 3)).to be true }
    it { expect(obj.connected(1, 4)).to be false }
    it { expect(obj.connected(1, 7)).to be false }

    it { expect(obj.connected(4, 6)).to be true }
    it { expect(obj.connected(4, 7)).to be true }
    it { expect(obj.connected(6, 7)).to be true }
    it { expect(obj.connected(7, 6)).to be true }
  end
end
