import UIKit

func multiTwo(array: [Int]) -> [Int] {
    var newArray = [Int]()
        for element in array {
            if element % 2 == 0 {
        newArray.append(element)
        }
    }
return newArray
}


func multiThree(array: [Int]) -> [Int] {
    var newArray = [Int]()
        for element in array {
            if element % 3 == 0 {
        newArray.append(element)
        }
    }
return newArray
}


func multiNot(array: [Int]) -> [Int] {
    var newArray = [Int]()
        for element in array {
            if element % 2 == 0 ||  element % 3 == 0 {
            } else {
                newArray.append(element)
        }
    }
return newArray
}






var array = [Int]()
for element in (1...100) {
    array.append(element)
}






var x = multiTwo(array: array)
var y = multiThree(array: array)
var z = multiNot(array: array)
