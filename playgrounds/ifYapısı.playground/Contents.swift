import UIKit

var yas = 19
var isim = "ahmet"
//örnek1
if yas >= 18{
    print("reşitsiniz")
}
//örnek2

if yas >= 18{
    print("reşitsiniz")
    
}
else{
    print("reşit değilsiniz")
}

//string kıyaslama
if isim == "ahmet"{
    print("merhaba ahmet ")
}
else if isim == "mehmet"{
    print("merhaba mehmet")
}
else {
    print("tanınmayan kişi")
}

//örnek 3 çoklu sart
var kullaniciAdi = "beyza"
var sifre = 12345
if sifre == 12345 && kullaniciAdi == "beyza"{
    print("giriş yapıldı")
}
else{
    print("hatalı giriş ")
}
//örnek çoklu sart or
var sinif = 8

if sinif == 9 || sinif == 10 || sinif == 11 || sinif == 12 {
    print("ayt ye girebilir")
}
else{
    print("sınava giremezsin")
}
//örnek ternary conditinal üçlü şart
 var a = 10
var b = 12

a == b ? print("eşit") : print("eşit değil")
