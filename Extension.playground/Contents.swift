import UIKit



extension Double
{
    func round(to places: Int) -> Double
    {
        let precisionNumber = pow(10, Double(places))
        var n = self
        n = n * precisionNumber
        n.round()
        n = n / precisionNumber
        return n
    }
}



var myDouble = 3.14234
myDouble.round(to: 1)
//let myRounded = String(format: "%.1f", myDouble)


