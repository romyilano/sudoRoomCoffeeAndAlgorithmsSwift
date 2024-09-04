//: [Previous](@previous)

import Foundation

/*:
 
 # Format: Matrix
 
 This is very common, and it looks more like a map.
 Input is a 2D matrix and the problem describes a story.
 

 * Example: "Each square of the matrix is a village. Villages trade with their neighboring villages, which are the villages directly above, to the left, to the right, or below them."
 
 * Here each village `(row, col)` is a node
    * Neighbor `(row - 1, col)`
    * Neighbor `(row, col - 1)`
    * neighbor `(row + 1), col)`
    * `(row,  col + 1)`
 
 Each element literally represents the `node` - it's very maplike.
 * Edges are determined by the problem description, not the input.
 
 ```
 var villageMap = [
    [1,0,1],
    [1,1,0],
    [1,0,1]
 ```
 
 Here `villageMap[0][0]` is neighbor to `villageMap[1][0]`
 
 `if villageMap[row - 1][col] == 1 {
    print("We are neighbors")
 }
 `
 * See also the [Spiral Matrix](https://leetcode.com/problems/spiral-matrix/description/) for practices
 */


var villageMap = [
   [1,0,1],
   [1,1,0],
   [1,0,1]
]
// TODO: finish this later but the spiral algorithms are related
func printoutNeighbors(villagemap: [[Int]]) {
    for row in 0..<villagemap.count {
        for column in 0..<villagemap[0].count {
            //check left and above
            if row > 0, column > 0 {
                if villagemap[row - 1][column - 1] == 1 {
                    print("\(row), \(column) is a neighbor of \(row - 1), \(column - 1)")
                }
            } // this is incomplete
        }
    }
}

printoutNeighbors(villagemap: villageMap)
//: [Next](@next)
