import UIKit

// Error Handling
// confirm to the Error Protocol
enum BankAccountError: Error {
    case insufficientFunds; case invalidAmount;
}

class BankAccount{
    var amount = 0.0
    
    func deposit(funds: Double) throws -> Double {
        if funds < 0 {
            throw BankAccountError.invalidAmount
        }
        amount = amount + funds
        return amount
    }
    func withdraw(funds: Double) throws -> Double {
        if funds < 0 {
            throw BankAccountError.invalidAmount
        }
        if funds > amount {
            throw BankAccountError.invalidAmount
        }
        amount = amount - funds
        return amount
    }
}


do {
    let myAccount = BankAccount()
    try myAccount.deposit(funds: -100.0)
    myAccount.amount
} catch BankAccountError.insufficientFunds{
    print("Insufficient Funds error")
} catch BankAccountError.invalidAmount {
    print("Invalid Amount error")
} catch {
    error
    print("An error has occured \(error.localizedDescription)")
}

