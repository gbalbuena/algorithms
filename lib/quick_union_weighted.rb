require 'quick_union'

class QuickUnionWeighted < QuickUnion
  attr_accessor :sz

  def initialize(n)
    super
    @sz = Array.new(n, 0)
  end

  def union(p, q)
    i = root(p)
    j = root(q)
    return if i == j
    if sz[i] < sz[j]
      ids[i] = j
      sz[j] += sz[i]
    else
      ids[j] = i
      sz[i] += sz[j]
    end
  end
end
