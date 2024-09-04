//: [Previous](@previous)

import Foundation
/*:
 
 # Adjacency List
From  [Leetcode makes a nice point](https://leetcode.com/explore/interview/card/leetcodes-interview-crash-course-data-structures-and-algorithms/707/traversals-trees-graphs/4721/) that compared to linked lists and

 ## Here is an adjacency list
 ![list of edges](graph_list_edges.jpeg)
 
 * Nodes are `0` to `n - 1`
 * Input will be a 2D integer array, a graph
 * `graph[i]` will be a list of all outgoing edges from the __i__th node
 
* graph can be represented as an adjacency list :
 ```
 graph = [[1], [2], [0, 3], []]
 ```
 
 > If we want all neighbors of node `0` we just check `graph[0]`
 */


// graphs as an array of directed edges
var edges = [[0, 1],
             [1,2],
             [2,0],
             [2,3]
]

// to build this graph you would do this
func buildAdjacencyList(nodes: Int, edges: [[Int]]) -> [[Int]] {
    // create an empty graph of integers
    var graph: [[Int]] = Array(repeating: [Int](), count: nodes)
    for edge in edges {
        let x = edge[0]
        let y = edge[1]
        graph[x].append(y)
        // if undirected
        // graph[y].append(x)
    }
    return graph
}

let matrix = Array(repeating: Array(repeating: 0, count: 3), count: 2)
print(matrix)
for row in matrix {
    print(row)
}
/*:
 
Get used to prepopulating 2x2 arrays
 
 ```
 let matrix = Array(repeating: Array(repeating: 0, count: 3), count: 2)
 ```

 
 */


//: [Next](03_AdjacencyMatrix)
