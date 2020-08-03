import UIKit

var numArray = [12,22,34,44,54,65]
// iterate over an array using  loop
numArray.forEach { (num) in
    print(num)
}

// accessing elements in array
let lastNum = numArray.last
let first = numArray.first


//append elements in array
numArray.append(77)
