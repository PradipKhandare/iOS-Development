import UIKit

for n in 1...12 {
    var num: Int = 1
    var count = 0
    while num <= n{
       
        if(n % num == 0 && n == num){
            count += 1
        } else{
            
        }
    
    }
    print(count)
}

