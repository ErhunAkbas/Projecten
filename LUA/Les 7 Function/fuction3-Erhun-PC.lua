require 'gui'
window = gui.create_window()
window.title = "ja klikker"

knop1 = window:add_button()
knop1.x = 70
knop1.y = 70
knop1.text = "Nee"

knop2 = window:add_button()
knop2.x = 170
knop2.y = 70
knop2.text = "Nee"

knop3 = window:add_button()
knop3.x = 70
knop3.y = 100
knop3.text = "Nee"

knop4 = window:add_button()
knop4.x = 170
knop4.y = 100
knop4.text = "Nee"

reset = window:add_button()
reset.x = 20
reset.y = 20
reset.text = "Reset"

function knop1:on_click()
  knop1.text = "ja"
end


gui.run()