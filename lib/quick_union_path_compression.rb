require 'quick_union_weighted'

class QuickUnionPathCompression < QuickUnionWeighted

  private

  def root(i)
    while (i != ids[i])
      ids[i] = ids[ids[i]]
      i = ids[i]
    end
    i
  end
end
