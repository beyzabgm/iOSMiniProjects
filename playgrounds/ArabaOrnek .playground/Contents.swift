import UIKit


class Araba {

    var renk:String?
    var hiz:Int?
    var calisiyorMu:Bool?
    
    func calistir(){
      
        calisiyorMu = true
    
    }
    
    func durdur(){
       
        calisiyorMu = false
        hiz = 0
        
        }
    
    func hizlan(kacKm:Int){
        hiz! += kacKm
        
        
    }
    
    func yavasla(kacKm:Int){
        hiz! -= kacKm
    
    }
    func bilgiAl(){
 
        print("renk: \(renk!)")
        print("hız: \(hiz!)")
        print("çalışıyor mu : \(calisiyorMu!)")
        
      }
}
var bmw = Araba()
bmw.hiz = 180
bmw.renk = "kırmızı"

bmw.calistir()
bmw.bilgiAl()
bmw.hizlan(kacKm: 10)
bmw.bilgiAl()
    
