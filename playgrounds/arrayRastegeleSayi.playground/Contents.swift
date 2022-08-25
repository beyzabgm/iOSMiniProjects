import UIKit

var sayilar = [Int]()
 
for _ in 1...10 {
    let rastgeleSayi = arc4random_uniform(10)
    
    sayilar.append(Int(rastgeleSayi)) //burda tür değişimi yapmak zorundayız çünkü rastgele sayı Unıt32 türünde bir sayı
}
sayilar.sort()
print(sayilar)

