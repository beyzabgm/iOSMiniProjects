import UIKit
 
class maas{
    var maas = 2100.0
    var yemekKart = 700.0
    
    var birikimHesabı:Double{
        get {
 
            return (2100-1500)*12
            
    }
        set(yeniMaas){
            self.maas = yeniMaas * 2
            
        }
}

}

var m = maas()
print(m.birikimHesabı)
m.birikimHesabı = 3000.0
print(m.maas)
