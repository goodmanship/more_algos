def run(maze_memo, maze, n, i, j)
  return false unless maze_memo[[i, j]].nil?
  maze_memo[[i, j]] = true
  return true if i == n - 1 && j == n - 1

  # test whether it is possible to move in each direction
  up = i >= 0 && maze[i-1][j] == 0
  right = j < n - 1 && maze[i][j+1] == 0
  down = i < n - 1 && maze[i+1][j] == 0
  left = j >= 0 && maze[i][j-1] == 0
  
  sum = [up, right, down, left].map{ |x| x ? 1 : 0 }.sum
  return false if sum < 2 && i != 0 && j != 0 # dead end

  # if any of these returns true, it will bubble back up
  # otherwise it will exhaust the possibilities and return false
  (up && run(maze_memo, maze, n, i-1, j)) ||
  (right && run(maze_memo, maze, n, i, j+1)) ||
  (down && run(maze_memo, maze, n, i+1, j)) ||
  (left && run(maze_memo, maze, n, i, j-1))
end

def solution(maze, n)
  maze_memo = {}
  run(maze_memo, maze, n, 0, 0)
end

puts solution([[0, 1, 0], [1, 0, 0], [0, 0, 0]])
puts solution([[0,0,1],[1,0,0],[1,1,0]], 3)
puts "should be true"