require 'gui'
window = gui.create_window()
window.title = "Ja klikker"

verliesTekst = 'nee'
winTekst = 'ja'

knop1 = window:add_button()
knop1.x = 70
knop1.y = 70
knop1.text = verliesTekst

function knop1:on_click()
  VeranderKnop(knop1)
  VeranderKnop(knop2)
  Controleer()
end

knop2 = window:add_button()
knop2.x = 170
knop2.y = 70
knop2.text = verliesTekst

function knop2:on_click()
  VeranderKnop(knop2)
  VeranderKnop(knop4)
  Controleer()
end
 
knop3 = window:add_button()
knop3.x = 70
knop3.y = 100
knop3.text = verliesTekst

function knop3:on_click()
  VeranderKnop(knop3)
  VeranderKnop(knop2)
  VeranderKnop(knop4)
  Controleer()
end

knop4 = window:add_button()
knop4.x = 170
knop4.y = 100
knop4.text = verliesTekst

function knop4:on_click()
  VeranderKnop(knop4)
  VeranderKnop(knop1)
  VeranderKnop(knop2)
  Controleer()
end

reset = window:add_button()
reset.x = 20
reset.y = 20
reset.text = "reset"

function reset:on_click()
  knop1.text = verliesTekst
  knop2.text = verliesTekst
  knop3.text = verliesTekst
  knop4.text = verliesTekst
  window.title = "Ja klikker"
end

function VeranderKnop(knop)
    if knop.text == winTekst then
    knop.text = verliesTekst
  else
    knop.text = winTekst
  end
end

function Controleer()
  if knop1.text == winTekst and  knop2.text == winTekst and knop3.text == winTekst and  knop4.text == winTekst then
      window.title = "Gewonnen"
  end
end
gui.run()