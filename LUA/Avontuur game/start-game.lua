require "gui"

window = gui.create_window()
window.title = "Adventure"
window.width = 1500
window.height = 800
window.x = 10
window.y = 10
window.resizable = false

first_button = window:add_button()
first_button.x = 10
first_button.y = 110
first_button.width = 150
first_button.height = 40
first_button.text = "1) Ga naar het bos\n om eten te zoeken."

second_button = window:add_button()
second_button.x = 10
second_button.y = 160
second_button.width = 150
second_button.height = 40
second_button.text = "2) Zwem de zee in om\nvis te vangen."


story_label = window:add_label(text)
story_label.x = 5
story_label.y = 10
story_label.text = "Je staat op een verlaten strand,\n je hebt honger.\nAchter je is het begin van een\ngroot bos.\nWat doe je?"


image = window:add_image()
image.file_name = "avontuur-images/rocky-beach.jpg"
image.x = first_button.width + 40
image.y = 0


function first_button:on_click()
  print("Ga naar het bos")
end

function DestroyImage(image)
  image.x = 10000
end


function second_button:on_click()
  second_button.x = -900
  DestroyImage(image)
  print("Ga de zee in")
  image = window:add_image()
  image.file_name = "avontuur-images/water.jpg"
  image.x = first_button.width + 40
  image.y = 0
  
  fish = window:add_image()
  fish.file_name = "avontuur-images/fish.png"
  fish.x = 900
  fish.y = 250
  
  local timer = gui.create_timer()
  timer.interval = 0.1
  timer:start()

  speedx = -5
  speedy = -5
    
  function timer:on_tick()
    fish.x = fish.x + speedx
    fish.y = fish.y + speedy
      
    if fish.x < 500 then
      speedx = 5
      
    elseif fish.x > 1200 then
      speedx = -5
    end
    

    if fish.y < 200 then
      speedy = 5
      
    elseif fish.y > 450 then
      speedy = -5
    end
  end
  
  function fish:on_mouse_up()
    image3 = window:add_image()
    image3.file_name = "avontuur-images/rocky-beach.jpg"
    image3.x = first_button.width + 40
    image3.y = 0
    timer:stop()
  end  
end

gui.run()