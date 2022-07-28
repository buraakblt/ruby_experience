# Diziler

dizi = ["Ali", "Veli", 15, "Ayşe", 10, 20]

p dizi
p dizi.index(15)
p dizi.index("Veli")
p dizi.index("Ahmet")
p dizi[3]
dizi[3] = "Fatma"
p dizi
dizi.unshift("Burak") # Dizinin başına eleman ekle
p dizi
dizi.insert(2, "Hakan") # Dizinin istenen yerine eleman ekle
p dizi
dizi.shift()     # Dizinin ilk elemanını sil
p dizi
dizi.pop()       # Dizinin son elemanını sil 
p dizi
dizi.push(50)    # Dizinin sonuna eleman ekle
p dizi
dizi.delete_at(3)   # or dizi.slice!(index)  
p dizi

dizi2 = Array(1..10)
p dizi2
