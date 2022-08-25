import UIKit
 
var dersler = ["kimya","algo","programlama"]

var notlar = [40,67,98]

var dersNotlari = Dictionary(uniqueKeysWithValues: zip(notlar,dersler))

print(dersNotlari)
