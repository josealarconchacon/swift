import Foundation

/*
 delay func that take two parameter
    1 - the time you want the function to wait in seconds (Int)
    2 -  block of functionality you want it to run after the delay
 */

func delay(seconds: Int, onFinish: () -> Void) {
    print("Watting \(seconds) seconds.")
    onFinish()
}

func refresh() { print("Refresh page") }

// invoke the delay function
delay(seconds: 20, onFinish: refresh)

//-------------------------------------------------------------------------------------------


// Closure with String parameter
func inSeconds(seconds: Int, onFinish: (String) -> Void) {
    print("Watting \(seconds) seconds.")
    onFinish("Success!!!")
}

func refreshPage(message: String) { print("Refresh page on The app store") }

// invoke the delay function
inSeconds(seconds: 20, onFinish: refreshPage)

//-------------------------------------------------------------------------------------------


// Closure Expression
inSeconds(seconds: 30, onFinish: { (message: String) -> Void in
    print("I am inside a closure expression: \(message)")
})
