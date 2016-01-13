require 'robot_arm'
robot_arm:load_level('exercise 10')
robot_arm.speed = 0.99


for i = 0, 4 do
  robot_arm:grab()
  
  for j = 1, 9 - 2*i do
   robot_arm:move_right()
  end

  robot_arm:drop()

  for k = 1, 8 - 2*i do 
    robot_arm:move_left()   
   end
end