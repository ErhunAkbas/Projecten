require "gui"

local window = gui.create_window()
window.title = "Text Box Demo"

local text_box = window:add_text_box()
text_box.x = 8
text_box.y = 8
text_box.width = 150

function text_box:on_click()
  
  local text_label = window:add_label()
  text_label.x = 180
  text_label.y = 180
  text_label.width = 150
  text_label.text = "Klik op mij"
  text_label.text = text_box.text
end

gui.run()