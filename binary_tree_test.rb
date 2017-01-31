require_relative "binary-tree"

puts "---Building binary tree with array of numbers---"
puts "-\n"
puts "-\n"
puts "-\n"
puts "-\n"
build_tree([15, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324])
puts "      |Displaying Tree|"
puts "          Root Node"
Node.print_tree
puts "-\n"
puts "-\n"
puts "-\n"
puts "-\n"
puts "BREADTH FIRST SEARCH TEST"
puts "-----------------------------"
puts "*******************"
puts "Test search for (67)"
puts "*******************"
breadth_first_search(67)
puts "-\n"
puts "-\n"
puts "-\n"
puts "*******************"
puts "Test search for (15)"
puts "*******************"
breadth_first_search(15)
puts "-\n"
puts "-\n"
puts "-\n"
puts "*******************"
puts "Test search for (6345)"
puts "*******************"
breadth_first_search(6345)
puts "-\n"
puts "-\n"
puts "-\n"
puts "*******************"
puts "Test search for (1000)"
puts "*******************"
breadth_first_search(1000)
puts "-\n"
puts "-\n"
puts "-\n"
puts "DEPTH FIRST SEARCH TEST (stack)"
puts "-----------------------------"
puts "*******************"
puts "Test search for (5)"
puts "*******************"
depth_first_search(5)
puts "-\n"
puts "-\n"
puts "-\n"
puts "*******************"
puts "Test search for (324)"
puts "*******************"
depth_first_search(324)
puts "-\n"
puts "-\n"
puts "-\n"
puts "*******************"
puts "Test search for (0)"
puts "*******************"
depth_first_search(0)
puts "-\n"
puts "-\n"
puts "-\n"
puts "DEPTH FIRST SEARCH TEST (recursion)"
puts "-----------------------------"
puts "*******************"
puts "Test search for (324)"
puts "*******************"
dfs_rec(324)
puts "-\n"
puts "-\n"
puts "-\n"
dfs_rec(15)
puts "*******************"
puts "Test search for (15)"
puts "*******************"
puts "-\n"
puts "-\n"
puts "-\n"
puts "*******************"
puts "Test search for (1000)"
puts "*******************"
dfs_rec(1000)
puts "-\n"
puts "-\n"
puts "-\n"
puts "ALL TESTS FINISHED"
