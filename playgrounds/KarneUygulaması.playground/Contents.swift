import UIKit

var notlar = [Int]()
var dersler = [String]()

dersler.append("biyoloji")
notlar.append(20)

dersler.append("programlama")
notlar.append(90)

dersler.append("swift")
notlar.append(98)

var toplam = 0

for i in 0...(notlar.count-1){
     print(" \(dersler[i]) : \(notlar[i])")
    toplam = toplam + notlar[i]
}

print(" ortalama : \(toplam/dersler.count)")
