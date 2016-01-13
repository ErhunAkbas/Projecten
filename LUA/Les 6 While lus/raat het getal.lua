math.randomseed(os.time())
geheimgetal = math.random(0, 10)

found = false

print ("raad het geteal")
while found == false do
  raden = io.read()
  raden = tonumber(raden)
  if raden == geheimgetal then
    print("dat is helemaal goed")
    found = true
  else
   print("Dat is niet goed")
 end
end