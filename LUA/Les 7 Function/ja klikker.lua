require 'gui'
window = gui.create_window()
window.title = "Ja klikker"

knop1 = window:add_button()
knop1.x = 70
knop1.y = 70
knop1.text = "nee"

function knop1:on_click()
  if knop1.text == "nee" then
    knop1.text = "ja"
  else
    knop1.text = "nee"
  end
    
  if knop2.text == "nee" then
    knop2.text = "ja" 
  else
  knop2.text = "nee"  
 end
   if knop1.text == 'ja' and  knop2.text == 'ja' and knop3.text == 'ja' and  knop4.text == 'ja' then
  window.title = "Gewonnen"
  end
end

knop2 = window:add_button()
knop2.x = 170
knop2.y = 70
knop2.text = "nee"

function knop2:on_click()
  if knop2.text == "nee" then
    knop2.text = "ja"
  else
    knop2.text = "nee"
  end
  
  if knop4.text == "nee" then
  knop4.text = "ja"
  else
  knop4.text = "nee"
 end
   if knop1.text == 'ja' and  knop2.text == 'ja' and knop3.text == 'ja' and  knop4.text == 'ja' then
  window.title = "Gewonnen"
  end
end
 
knop3 = window:add_button()
knop3.x = 70
knop3.y = 100
knop3.text = "nee"

function knop3:on_click()
  if knop3.text == "nee" then
    knop3.text = "ja"
  else
    knop3.text = "nee"
  end
  
  if knop2.text == "ja" then
    knop2.text = "nee"
  else
    knop2.text = "ja"
  end
    
  if knop4.text == "ja" then
    knop4.text = "nee"
  else
    knop4.text = "ja"
  end
  
  if knop1.text == 'ja' and  knop2.text == 'ja' and knop3.text == 'ja' and  knop4.text == 'ja' then
  window.title = "Gewonnen"
  end
end

knop4 = window:add_button()
knop4.x = 170
knop4.y = 100
knop4.text = "nee"


function knop4:on_click()
  if knop4.text == "nee" then
    knop4.text = "ja"
  else
    knop4.text = "nee"
  end
  if knop1.text == "nee" then 
    knop1.text = "ja"
  else
    knop1.text = "nee"
  end
  
  if knop2.text == "nee" then
    knop2.text = "ja"
  else
     knop2.text = "nee"
  end 
  
  if knop1.text == 'ja' and  knop2.text == 'ja' and knop3.text == 'ja' and  knop4.text == 'ja' then
  window.title = "Gewonnen"
  end
end

reset = window:add_button()
reset.x = 20
reset.y = 20
reset.text = "reset"

function reset:on_click()
  knop1.text = "nee"
  knop2.text = "nee"
  knop3.text = "nee"
  knop4.text = "nee"
end
gui.run()