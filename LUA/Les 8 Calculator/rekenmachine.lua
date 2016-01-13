require 'gui'

getal1 = 0;
operator = ""

local window = gui.create_window()
window.title = "Calculator"
window.width = 250
window.height = 290
window.resizable = false

local text_box = window:add_text_box()
text_box.x = 12
text_box.y = 10
text_box.width = 228
text_box.text = ""

knop7 = window:add_button()
knop7.x = 10
knop7.y = 50
knop7.text = "7"
knop7.height = 50
knop7.width = 50

function knop7: on_click()
  text_box.text = text_box.text .. "7"
  end

knop8 = window:add_button()
knop8.x = 70
knop8.y = 50
knop8.text = "8"
knop8.height = 50
knop8.width = 50

function knop8: on_click()
  text_box.text = text_box.text .. "8"
  end

knop9 = window:add_button()
knop9.x = 130
knop9.y = 50
knop9.text = "9"
knop9.height = 50
knop9.width = 50

function knop9: on_click()
  text_box.text = text_box.text .. "9"
  end

plusknop = window:add_button()
plusknop.x = 190
plusknop.y = 50
plusknop.text = "+"
plusknop.height = 50
plusknop.width = 50

function plusknop:on_click()
  getal1 = text_box.text
  operator = "+"
  text_box.text = ""
end

knop4 = window:add_button()
knop4.x = 10
knop4.y = 110
knop4.text = "4"
knop4.height = 50
knop4.width = 50

function knop4: on_click()
  text_box.text = text_box.text .. "4"
  end

knop5 = window:add_button()
knop5.x = 70
knop5.y = 110
knop5.text = "5"
knop5.height = 50
knop5.width = 50

function knop5: on_click()
  text_box.text = text_box.text .. "5"
  end

knop6 = window:add_button()
knop6.x = 130
knop6.y = 110
knop6.text = "6"
knop6.height = 50
knop6.width = 50

function knop6: on_click()
  text_box.text = text_box.text .. "6"
  end

minknop = window:add_button()
minknop.x = 190
minknop.y = 110
minknop.text = "-"
minknop.height = 50
minknop.width = 50

function minknop:on_click()
  getal1 = text_box.text
  operator = "-"
  text_box.text = ""
end


knop1 = window:add_button()
knop1.x = 10
knop1.y = 170
knop1.text = "1"
knop1.height = 50
knop1.width = 50

function knop1: on_click()
  text_box.text = text_box.text .. "1"
 end

knop2 = window:add_button()
knop2.x = 70
knop2.y = 170
knop2.text = "2"
knop2.height = 50
knop2.width = 50

function knop2: on_click()
  text_box.text = text_box.text .. "2"
  end

knop3 = window:add_button()
knop3.x = 130
knop3.y = 170
knop3.text = "3"
knop3.height = 50
knop3.width = 50

function knop3: on_click()
  text_box.text = text_box.text .. "3"
  end

keerknop = window:add_button()
keerknop.x = 190
keerknop.y = 170
keerknop.text = "x"
keerknop.height = 50
keerknop.width = 50

function keerknop:on_click()
  getal1 = text_box.text
  operator = "*"
  text_box.text = ""
end

clean = window:add_button()
clean.x = 10
clean.y = 230
clean.text = "c"
clean.height = 50
clean.width = 50

function clean: on_click()
  text_box.text = ""
  end

knop0 = window:add_button()
knop0.x = 70
knop0.y = 230
knop0.width = 50
knop0.height = 50
knop0.text = "0"


uitkomstknop = window:add_button()
uitkomstknop.x = 130
uitkomstknop.y = 230
uitkomstknop.width = 50
uitkomstknop.height = 50
uitkomstknop.text = "="

function uitkomstknop: on_click()
  if operator == "*" then
    uitkomst = getal1 * text_box.text
    text_box.text = uitkomst
    
  elseif operator == "+" then
    uitkomst = getal1 + text_box.text
    text_box.text = uitkomst 
  
  elseif operator == "/" then
    uitkomst = getal1 / text_box.text
    text_box.text = uitkomst 
    
  elseif operator == "-" then
    uitkomst = getal1 - text_box.text
    text_box.text = uitkomst 
  end
end

deelknop = window:add_button()
deelknop.x = 190
deelknop.y = 230
deelknop.width = 50
deelknop.height = 50
deelknop.text = "/"

function deelknop:on_click()
  getal1 = text_box.text
  operator = "/"
  text_box.text = ""
end

gui.run()