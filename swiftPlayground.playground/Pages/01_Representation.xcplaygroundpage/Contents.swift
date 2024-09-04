//: [Previous](@previous)

import Foundation
/*:
 
 # Power in Representation
 
 [Leetcode makes a nice point](https://leetcode.com/explore/interview/card/leetcodes-interview-crash-course-data-structures-and-algorithms/707/traversals-trees-graphs/4721/) that compared to linked lists and
 trees, graphs are much more abstracted. It's up to you to represent them how you want, and there is not a strict definition of showing `Node` data structures in code the way there are for other problems.
 
 
 ## Ways graph algorithms are given
 
 * there are `n` cities labeled from `0` to `n-1`
 * sometimes they won't even mention it's a graph and you have to figure that out for yourself
 
 
 */


// graphs as an array of directed edges
var edges = [[0, 1],
             [1,2],
             [2,0],
             [2,3]
]
/*:
 
 ## Showing graphs as an array of edges
 
 ![list of edges](graph_list_edges.jpeg)
 
 > Note that the graph in the image doesn't exist in memory. It only exists as an array ```
 [[0, 1], [1, 2], [2, 0], [2, 3]]
 ```
 */
// to build the graph from an array of edges you can create a hash

func build_graph(edges: [[Int]], directed: Bool = false) -> [Int: [Int]] {
    var graph = [Int: [Int]]()
    for edge in edges {
        // this is more of tuple
        guard edge.count == 2 else {
            continue
        }
        print(edge)
        print(edge[0])
        var x = edge[0]
        var y = edge[1]
        if graph[x] == nil {
            graph[x] = [Int]()
        }
        graph[x]?.append(edge[1])
        // if it's undreicted add the y
      
        if directed {
            if graph[y] == nil {
                graph[y] = [Int]()
            }
            graph[y]?.append(x)
        }
        // graph[edge[1]].append(edge[0])
    }
    return graph
}

let graph = build_graph(edges: edges, directed: true)
print(graph)

/*:
 
 This example will reconstruct as a hash map of all the nodes (vertices)
 and their edges:
 ```
 [2: [1, 0, 3],
 0: [1, 2],
 1: [0, 2], 3: [2]]
 ```
 
 ![list of edges](graph_list_edges.jpeg)
 
 */



//: [Next](02_AdjacencyList)
