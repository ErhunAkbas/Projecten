require 'robot_arm'

robot_arm: random_level(1)
robot_arm.speed = 0.8
move = true
first = 0
while move == true do
  robot_arm:grab()
  color = robot_arm:scan()
  print(color)
  if color == nil then
    if first == 0 then
      first = 1 
      robot_arm:move_right()
    else
      move = false
    end
    end
end