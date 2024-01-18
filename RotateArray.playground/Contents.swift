import UIKit

var arr1: [Int] = [1, 2, 3, 4, 5]
let k = 3

func solution(arr: [Int], k: Int) -> [Int]{
    var result = arr
    for _ in 1...k {
      result = rotateOnce(arr2: result)
        result.remove(at: result.count-1)
       print(result)
    }
    return result
}

func rotateOnce(arr2: [Int]) -> [Int] {
    var newArray: [Int] = Array(repeating: 0, count: arr2.count + 1)
    
    for i in 0...arr2.count - 1{
       newArray[i+1] = arr2[i]
    }
    newArray[0] = arr2.last!
    
    return newArray
}
solution(arr: arr1, k: 9)
//rotateOnce(arr: arr)

