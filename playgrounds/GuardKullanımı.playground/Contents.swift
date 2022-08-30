import UIKit

func kisiTanima(ad:String){
    
    if ad == "begüm"{
        print("begüm kişisi")
        
    }else{
        print("bu kişi begüm değil")
    }
}
kisiTanima(ad: "begüm")

func kisiTanima2(ad:String){
    guard ad == "beyza" else {
         print("tanınmayan kişi")
        return
    }
    print ("merhaba beyza")
    
}
kisiTanima2(ad: "beyza")
