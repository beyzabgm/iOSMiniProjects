import UIKit

var sayilar = [1,2,3,4,5]

for (index,s) in sayilar.enumerated(){
    
    let sonuc = s * 2
    sayilar[index] = sonuc
    
}
print(sayilar)
    
    

