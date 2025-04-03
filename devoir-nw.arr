use context starter2024
examples:
  list-to-upper([list: "a", "b"]) is [list: "A", "B"]
end

examples:
  surround(0) is [list: -1, 0, 1]
  surround(3) is [list: 2, 3, 4]
end

examples:
  nums-are-same([list: 1, 1, 1]) is true
  nums-are-same([list: 1, 2, 1]) is false
end

examples:
  is-full-house([list: 2, 2, 5, 5, 5]) is true
  is-full-house([list: 2, 2, 2, 5, 5]) is true
  is-full-house([list: 2, 5, 2, 2, 5]) is true
  is-full-house([list: 2, 2, 2, 6, 5]) is false
end