import UIKit
import Foundation

/*:
 
# Adjacency Matrix

 It's important to get used to prepopulating 2x2 arrays for algorithms in Swift
 
 ```
 let matrix = Array(repeating: Array(repeating: 0, count: 3), count: 2)
 ```
 From Leetcode - Interview crash course page on [Trees and graphs](https://leetcode.com/explore/interview/card/leetcodes-interview-crash-course-data-structures-and-algorithms/707/traversals-trees-graphs/4721/)
 
The adjacency matrix seems to be the most popular that surfaces in problems.
 
* Nodes are `0` to `n - 1`
* They supply the 2D matrix of size `nxn`
* `graph[i][j] == 1` means that there's an outgoing edge from node `i` to `j` (this is directed)
* For an undirected graph then `graph[j][i]==1` automatically as well

 ![adjacency matrix example](adjacencyMatrix.jpeg)
 */
var matrix = Array(repeating: Array(repeating: 0, count: 4), count: 4)
matrix[0][1] = 1
matrix[1][2] = 1
matrix[2][0] = 1
matrix[2][3] = 1


/*:
 
 > When given this format, you have two options.
 
 > During the traversal, at any given node you can iterate over graph[node], and if graph[node][i] == 1, then you know that node i is a neighbor.
 
 > Alternatively, you can pre-process the graph as we did with an array of edges. Build a hash map and then iterate over the entire graph. If graph[i][j] == 1, then put j in the list associated with graph[i]. This way, when performing the traversal, you will not need to iterate n times at every node to find the neighbors.
 > This is especially useful when nodes have only a few neighbors and n is large.
 
 Both of these approaches will have a time complexity of
 O (n^2)
 */
// iterate over `graph[node]`
var n = 0
print("here we just examine node \(n)")
for node in matrix[n] {
    if node == 1 {
        print("node \(n) has \(node) as a neighbor in this directed graph")
    }
}

func iterateOverAdjacencyMatrix(matrix: [[Int]]) {
    for node in 0..<matrix.count {
        if matrix[node].contains(1) {
            print("there is at least one connection from \(node) to another node")
        }
    }
}
/*:
 
 ```
 here we just examine node 0
 node 0 has 1 as a neighbor in this directed graph
 there is at least one connection from 0 to another node
 there is at least one connection from 1 to another node
 there is at least one connection from 2 to another node
 ```
 */
print(iterateOverAdjacencyMatrix(matrix: matrix))
//: [Next: Representation](Representation)
