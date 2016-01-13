print("Welke programmeertaal is bedacht door Bjarne Stroustrup?")
Name = io.read()

if Name == "c++" or Name == "C++" then
  print ("Iderdaad")
else
  print("Hoe kom je daar nou bij?")
end

print("Wie heeft de computer uitgevonden")
Name = io.read()

if Name == "Charles Babbage" or Name == "Alan Turing" or Name == "Konrad Zuse" then
print("Dat reken ik goed.")
else 
print("Dat is niet goed, maar het is ook een moeilijke vraag.")
end

print("In welk jaar is Pac-man op de markt gebracht?")
Age = tonumber(io.read())

if Age == 1980 then
  print(Age .. "Dat je dat weet weet!")
elseif Age > 1976 and Age < 1984 then
  print("Bijna goed, maar toch fout.") 
else
  print ("Da's niet eens in de buurt.")
end
