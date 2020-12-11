import UIKit
import Foundation

enum Weekday{
    case Monday, Tusday, Wednesday, Thursday, Friday, Saturday, Sunday;
}

func greet(dayOfWeek: Weekday){
    if dayOfWeek == .Tusday{
        print("Hang in there...")
    }
}
greet(dayOfWeek: .Tusday)

