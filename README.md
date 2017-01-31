
# About
Ruby exercise from The Odin Project.
 - Implementation of binary-tree data structure with a constructed node class.
 - Breadth-first and depth-first search methods for finding values.


# Demo
( run binary_tree_test.rb in console )
```shell
---Building binary tree with array of numbers---
-
-
-
-
      |Displaying Tree|
          Root Node
_____________15_______________
|                            |
|                            |
7............................23
_____________7_______________
|                            |
|                            |
4.............................8
_____________4_______________
|                            |
|                            |
4.............................5
_____________23_______________
|                            |
|                            |
............................67
_____________8_______________
|                            |
|                            |
.............................9
_____________9_______________
|                            |
|                            |
9.............................
_____________4_______________
|                            |
|                            |
3.............................
_____________3_______________
|                            |
|                            |
.............................
_____________5_______________
|                            |
|                            |
.............................7
_____________7_______________
|                            |
|                            |
.............................
_____________9_______________
|                            |
|                            |
.............................
_____________67_______________
|                            |
|                            |
...........................6345
_____________6345_______________
|                            |
|                            |
324...........................
_____________324_______________
|                            |
|                            |
.............................
-
-
-
-
BREADTH FIRST SEARCH TEST
-----------------------------
*******************
Test search for (67)
*******************
Searching node 15....
Left child is 7.
Right child is 23
Searching node 7....
Left child is 4.
Right child is 8
Searching node 23....
No left child.
Right child is 67
Searching node 4....
Left child is 4.
Right child is 5
Searching node 8....
No left child.
Right child is 9
Searching node 67....
Found 67 at node #<Node:0x007faf9502d180>!
-
-
-
*******************
Test search for (15)
*******************
Searching node 15....
Found 15 at node #<Node:0x007faf9502d5b8>!
-
-
-
*******************
Test search for (6345)
*******************
Searching node 15....
Left child is 7.
Right child is 23
Searching node 7....
Left child is 4.
Right child is 8
Searching node 23....
No left child.
Right child is 67
Searching node 4....
Left child is 4.
Right child is 5
Searching node 8....
No left child.
Right child is 9
Searching node 67....
No left child.
Right child is 6345
Searching node 4....
Left child is 3.
No right child.
Searching node 5....
No left child.
Right child is 7
Searching node 9....
Left child is 9.
No right child.
Searching node 6345....
Found 6345 at node #<Node:0x007faf9502d108>!
-
-
-
*******************
Test search for (1000)
*******************
Searching node 15....
Left child is 7.
Right child is 23
Searching node 7....
Left child is 4.
Right child is 8
Searching node 23....
No left child.
Right child is 67
Searching node 4....
Left child is 4.
Right child is 5
Searching node 8....
No left child.
Right child is 9
Searching node 67....
No left child.
Right child is 6345
Searching node 4....
Left child is 3.
No right child.
Searching node 5....
No left child.
Right child is 7
Searching node 9....
Left child is 9.
No right child.
Searching node 6345....
Left child is 324.
No right child.
Searching node 3....
No left child.
No right child.
Searching node 7....
No left child.
No right child.
Searching node 9....
No left child.
No right child.
Searching node 324....
No left child.
No right child.
-
-
-
DEPTH FIRST SEARCH TEST (stack)
-----------------------------
*******************
Test search for (5)
*******************
Searching node 15...
Left child is 7.
Right child is 23.
Searching node 7...
Left child is 4.
Right child is 8.
Searching node 4...
Left child is 4.
Right child is 5.
Searching node 4...
Left child is 3.
No right child.
Searching node 3...
No left child.
No right child.
Searching node 5...
Found 5 at node #<Node:0x007faf9502d2c0>!
-
-
-
*******************
Test search for (324)
*******************
Searching node 15...
Left child is 7.
Right child is 23.
Searching node 7...
Left child is 4.
Right child is 8.
Searching node 4...
Left child is 4.
Right child is 5.
Searching node 4...
Left child is 3.
No right child.
Searching node 3...
No left child.
No right child.
Searching node 5...
No left child.
Right child is 7.
Searching node 7...
No left child.
No right child.
Searching node 8...
No left child.
Right child is 9.
Searching node 9...
Left child is 9.
No right child.
Searching node 9...
No left child.
No right child.
Searching node 23...
No left child.
Right child is 67.
Searching node 67...
No left child.
Right child is 6345.
Searching node 6345...
Left child is 324.
No right child.
Searching node 324...
Found 324 at node #<Node:0x007faf9502d0b8>!
-
-
-
*******************
Test search for (0)
*******************
Searching node 15...
Left child is 7.
Right child is 23.
Searching node 7...
Left child is 4.
Right child is 8.
Searching node 4...
Left child is 4.
Right child is 5.
Searching node 4...
Left child is 3.
No right child.
Searching node 3...
No left child.
No right child.
Searching node 5...
No left child.
Right child is 7.
Searching node 7...
No left child.
No right child.
Searching node 8...
No left child.
Right child is 9.
Searching node 9...
Left child is 9.
No right child.
Searching node 9...
No left child.
No right child.
Searching node 23...
No left child.
Right child is 67.
Searching node 67...
No left child.
Right child is 6345.
Searching node 6345...
Left child is 324.
No right child.
Searching node 324...
No left child.
No right child.
-
-
-
DEPTH FIRST SEARCH TEST (recursion)
-----------------------------
*******************
Test search for (324)
*******************
Searching node 15
Left child is 7
Right child is 23.
Searching node 7
Left child is 4
Right child is 8.
Searching node 4
Left child is 4
Right child is 5.
Searching node 4
Left child is 3
No right child.
Searching node 3
No left child.
No right child.
Searching node 5
No left child.
Right child is 7.
Searching node 7
No left child.
No right child.
Searching node 8
No left child.
Right child is 9.
Searching node 9
Left child is 9
No right child.
Searching node 9
No left child.
No right child.
Searching node 23
No left child.
Right child is 67.
Searching node 67
No left child.
Right child is 6345.
Searching node 6345
Left child is 324
No right child.
Searching node 324
Found 324 at node #<Node:0x007faf9502d0b8>!
-
-
-
Searching node 15
Found 15 at node #<Node:0x007faf9502d5b8>!
*******************
Test search for (15)
*******************
-
-
-
*******************
Test search for (1000)
*******************
Searching node 15
Left child is 7
Right child is 23.
Searching node 7
Left child is 4
Right child is 8.
Searching node 4
Left child is 4
Right child is 5.
Searching node 4
Left child is 3
No right child.
Searching node 3
No left child.
No right child.
Searching node 5
No left child.
Right child is 7.
Searching node 7
No left child.
No right child.
Searching node 8
No left child.
Right child is 9.
Searching node 9
Left child is 9
No right child.
Searching node 9
No left child.
No right child.
Searching node 23
No left child.
Right child is 67.
Searching node 67
No left child.
Right child is 6345.
Searching node 6345
Left child is 324
No right child.
Searching node 324
No left child.
No right child.
-
-
-
ALL TESTS FINISHED
