import Foundation

let inInches : Int = 12
let numberOfPeople : Int = 65


var numberOfSlices: Int {
    get {
        return inInches - 4
    }set {
        print("number of slices is equal to \(newValue)")
    }
}

numberOfSlices = 13
print(numberOfSlices)
