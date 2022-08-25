import UIKit

var isimler = ["ahmet","mehmet","eren","beyza","eren"]

var kontrolIsim = "beyza"

for i in isimler {
    
    if i == kontrolIsim {
        print("aradığınız isim bu dizide vardır ")
        break
    }
    else {
        print("yok")
    }
}
