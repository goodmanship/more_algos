# @param {Integer[]} candidates
# @param {Integer} target
# @return {Integer[][]}
@combos = []

def combination_sum(candidates, target)
  recursive_combo(candidates, target, combos)
end

def recursive_combo(candidates, target, combos)
  return [] if target < candidates.min
  candidates.each do |c|
    if @combos << 
  end
end
