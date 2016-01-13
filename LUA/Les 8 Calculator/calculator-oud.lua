require "gui"

local window = gui.create_window()
window.title = "Text Box Demo"

local text_box1 = window:add_text_box()
text_box1.x = 8
text_box1.y = 8
text_box1.width = 150
text_box1.text = "5"

local text_box2 = window:add_text_box()
text_box2.x = 8
text_box2.y = 50
text_box2.width = 150
text_box2.text = "8"

local text_box3 = window:add_text_box()
text_box3.x = 8
text_box3.y = 90
text_box3.width = 150

plus = window:add_button()
plus.x = 8
plus.y = 120
plus.text = "Optellen"


function plus:on_click()
  text_box3.text = text_box1.text + text_box2.text
end

min = window:add_button()
min.x = 110
min.y = 120
min.text = "Aftrekken"

function min:on_click()
  text_box3.text = text_box1.text - text_box2.text
end

delen = window:add_button()
delen.x = 210
delen.y = 120
delen.text = "Delen"

function delen:on_click()
  text_box3.text = text_box1.text / text_box2.text
end

keer = window:add_button()
keer.x = 310
keer.y = 120
keer.text = "Keer"

function keer:on_click()
  text_box3.text = text_box1.text * text_box2.text
end

reset = window:add_button()
reset.x = 8
reset.y = 160
reset.text = "Reset"

function reset:on_click()
  text_box1:destroy()
  text_box2:destroy()
  text_box3:destroy()
end
gui.run()