//: [Previous](@previous)

/*:
 # Graphs - DFS
 
 [Trees and graphs - Graphs - DFS](https://leetcode.com/explore/interview/card/leetcodes-interview-crash-course-data-structures-and-algorithms/707/traversals-trees-graphs/4626/)
 
 > Example 1: 547. [Number of Provinces](https://leetcode.com/problems/number-of-provinces/)
 
>  There are n cities. A province is a group of directly or indirectly connected cities and no other cities outside of the group. You are given an n x n matrix isConnected where isConnected[i][j] = isConnected[j][i] = 1 if the ith city and the jth city are directly connected &  isConnected[i][j] = 0 otherwise. Return the total number of provinces.

 * This is an undirected graph
 * Graph is given as an adjacency matrix
 * Problem asks for the number of connected components (so it's __not__ the number of vertices)
 * Since this is the undirected graph, a DFS can result in a cycle.
 * To avoid cycles, we create a `Set<Int>` of `seen` to track nodes we have already visited - this avoids counting more than 1x
 */


//func findCircleNum(_ isConnected: [[Int]]) -> Int {
//    var provinces = 0
//    
//    return provinces
//}

func buildGraph(isConnected: [[Int]]) -> [Int: [Int]] {
    var graph = [Int: [Int]]()
    // make sure the dictionary is populated
    for city in 0..<isConnected.count {
        graph[city] = [Int]()
    }
    // create a hash map
    for row in 0..<isConnected.count {
        for column in row + 1..<isConnected[row].count {
            if isConnected[row][column] == 1 {
                graph[row]?.append(column)
                graph[column]?.append(row)
            }
        }
    }
    return graph
}

var isConnected: [[Int]] = [
    [1, 1, 0],
    [1, 1, 0],
    [0, 0, 1]
]


print(buildGraph(isConnected: isConnected))

// just print it out this time
func dfs(_ node: Int, graph: [Int: [Int]]) -> Set<Int> {
    var seen = Set<Int>()
    for neighbor in graph[node]! {
        if !seen.contains(neighbor) {
            print("adding \(neighbor) of node \(node)")
            seen.insert(neighbor)
            dfs(neighbor, graph: graph)
        }
    }
    return seen
}

let graph = buildGraph(isConnected: isConnected)
print(graph)
// print(dfs(0, graph: graph))
/*:
 The hash will look like this:
 `[0: [1], 2: [], 1: [0]]`
 
 
 */
//: [Next](@next)
