require 'union_find'

class QuickFind < UnionFind
  def connected(p, q)
    ids[p] == ids[q]
  end

  def union(p, q)
    pid = ids[p]
    qid = ids[q]
    ids.each_with_index do |value, index|
      ids[index] = qid if value == pid
    end
  end
end
