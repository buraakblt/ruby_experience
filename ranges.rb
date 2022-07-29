# Ranges - Aralıklı Nesneler
a = (1..15) # Küçükten büyüğe sıralanmak zorunda
b = ("a".."k")

p a.to_a
p a.to_a.join
p b.to_a
p b.to_a.join

# Ranges - Begin ve First ifadeleri
p "---------------------------------"

p a.begin
p a.first(3)

# Ranges - End ve Last ifadeleri
p "---------------------------------"

p b.end
p b.last(2)

# Ranges - Min, Max ve Size 
p "---------------------------------"
c = (10..20)
d = ("a".."k")

p c.min
p c.max
p c.size

p d.to_a.min
p d.to_a.max
p d.to_a.size

# Ranges - Step Methodu
p "---------------------------------"

p a.step(2).to_a  # Girdiğimiz değer kadar atlayarak ilerler.
p b.step(2).to_a