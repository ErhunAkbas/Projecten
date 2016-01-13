require 'robot_arm'
robot_arm: random_level(4)
robot_arm.speed = 0.80
print("Welke kolom moet worden verplaatst? Je kunt kiezen uit 1 t/m 4")
answer = string.lower(io.read())
 
 
 j = true 
  for i = 1,  (answer - 1) do
    robot_arm:move_right()
  end
  
  
  
    while j == true do
      robot_arm:grab()
      color = robot_arm:scan()     
      if color == nil then
        j = false
    else  
          for l = 1, (9 -answer) do
          robot_arm:move_right()
         end
          robot_arm:drop()
          for k = 1, (9 - answer) do
            robot_arm:move_left()
          end
      end     
   end


  
  
  
  
  
