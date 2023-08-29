# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def delete_duplicates(head)
  i = head
  while i do
    if i.next && i.next.val == i.val
      i.next = i.next.next
    else
      i = i.next
    end
  end
  head
end