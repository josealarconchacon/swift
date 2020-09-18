import UIKit

// comparison operators
var price = 7.5
var allowance = 10.0
var jucePrice = 2.5
if allowance >= price + jucePrice {
    print("Let's go to the movie theater")
} else {
    print("Let just watch a moview at home")
}

// logical operators
var hungry = true
var vegetarian = true
var thereIsPie = true
if hungry && !vegetarian {
    print("Let's eat steak!")
} else if hungry && vegetarian {
    print("How about pumpkin curry?")
} else {
    print("nevermind")
}


// ternary conditional
hungry ? print("Is time to eat") : print("Let's wait 5 more minutes")
hungry || thereIsPie ? print("Let's eat that Pie") : print("there is not pie")

// .character property can be access an array of character
var myStr = "Me me in ST. Louis"
for char in myStr {
    if char == "e" {
        print("found an \(char)")
    } else {
        print("not char found")
    }
}

// string can be treaed as NSString
var newStr = myStr.replacingOccurrences(of: "e", with: "5")
print(newStr)
