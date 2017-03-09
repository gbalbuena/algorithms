require 'union_find'

class QuickUnion < UnionFind
  def connected(p, q)
    root(p) == root(q)
  end

  def union(p, q)
    i = root(p)
    j = root(q)
    ids[i] = j
  end

  private

  def root(i)
    while (i != ids[i])
      i = ids[i]
    end
    i
  end
end
