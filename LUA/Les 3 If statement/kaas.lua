print("Is de klaas geel")
answer = string.lower(io.read())
if answer == "ja" then
  print("Zitten er gaten in?")
  answer = string.lower(io.read())
  if answer =="ja" then
    print("Is de kaas belachelijk duur?")
    answer = string.lower(io.read())
    if answer == "ja" then
    print ("Emmenthaler")
    else
    print("Leerdammer")
    end
  else
    print("Is de kaas hard als steen?")
    answer = string.lower(io.read())
    if answer == "ja" then
      print("Pamigiano Reggiano")
    else
      print("Goudse kaas")
    end
  end
  
      

 elseif answer == "nee" then
  print("Heeft de klaas blauwe schimmels?")
  answer = string.lower(io.read())
  if answer == "ja" then
    print("Heeft de kaas en korst?") 
    answer = string.lower(io.read())
    if answer == "ja" then
      print("Blue de Rachbaron")
    else
      print("Fourme d'Ambert")
    end
  else
    print("Heeft de kaas een korst?")
    answer = string.lower(io.read())
    if answer == "ja" then
      print("Camembert")
    else 
      print("Mozzarella")
    end
  end
end
