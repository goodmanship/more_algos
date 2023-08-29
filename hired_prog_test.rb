# hired test

def solution(s)
  start = 0
  longest = 0
  char_hash = {}

  i = 0
  while i < s.length do
    c = s[i]
    if char_hash[c]
      longest = i - start if i - start > longest

      # reset and move cursor back to just after the dupe
      i = char_hash[c] + 1
      start = i
      char_hash = {}
      next
    else
      char_hash[c] = i
    end
    i += 1
  end

  # just in case the end is the longest substring
  longest = i - start if i - start > longest
  longest
end

# puts solution("nndNfdfdf")
puts solution("tlongestl")
# puts solution ("pdxOyzuiXvMdpWtlRUDrbAkAjvWPeAgHNeWcddWJOXvQgwqmQEYZzUEjHcMbKKYgxMKZkqVtssrCduPMzgiylMVKKVZzxRxeSCKmJXRLHYWSEWiEOrrUFKKwuODFTRkbgNhGNjTawpAFeUDtgHeSwQgUHpnuUDubAPcSWZcYNNDJHoQwkcCQrtoTqzAvAFRXXUopueeodicnGeHqdaRoSmPfrTFaUUJyiODvgJgaBfGsXLvERRqGzRWur")