import UIKit

var iller = [Int:String]()

iller[64] = "uşak"
iller[35] = "izmir"
iller[6] = "ankara"

print(iller)

var il = [16:"bursa",34:"istanbul",64:"uşak"]

il[36] = "bilmiyorum"//veri ekleme
il[48] = "muğla"//veri ekleme

il[64] = "yeni uşak"//veri güncelleme
iller.updateValue("bursaaaa", forKey: 16)//veri güncelleme

print(il)
print(il[64]!)//veri okunma
 
//veri çekme döngü ile
for (anahtar,deger) in il{
print("anahtar : \(anahtar) , il : \(deger)")
    
}
iller.removeValue(forKey: 6 )//veri silme
print(iller)

var tersDic = iller.reversed()//verileri tersine çevirme
print(tersDic)

