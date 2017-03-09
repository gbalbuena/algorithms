class UnionFind
  attr_accessor :ids

  def initialize(n)
    @ids = (0..n).to_a
  end
end
