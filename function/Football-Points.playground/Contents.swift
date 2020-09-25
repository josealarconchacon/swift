import UIKit

/*
 Create a function that takes the number of wins, draws and losses and calculates the number of points a football team has obtained so far.
     wins get 3 points
     draws get 1 point
     losses get 0 points
 */
func footballPoints(_ wins: Int, _ draws: Int, _ losses: Int) -> Int {
    return (3 * wins) + draws
}
