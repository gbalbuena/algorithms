require 'spec_helper'

RSpec.describe QuickUnionPathCompression do
  it_behaves_like :a_union_find_algorithm, [0, 1, 1, 3, 4, 5, 6, 7, 8, 9]
end
