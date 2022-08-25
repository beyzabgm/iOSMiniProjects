import UIKit

var sayilar = [1,4,67,89,76,34,23,12]

var tekler = [Int]() //dizi oluşturduk 
var ciftler = [Int]()

for s in sayilar {
    let sonuc = s % 2
    if sonuc == 0{
        ciftler.append(s)
    }
    
    else {
        tekler.append(s)
        
    }
}

print("tek sayılar \(tekler)")
print("çift sayılar \(ciftler)")
