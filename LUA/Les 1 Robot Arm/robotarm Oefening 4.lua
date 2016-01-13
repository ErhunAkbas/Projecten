require 'robot_arm'
robot_arm:load_level('exercise 4')
robot_arm.speed = 0.99

for i = 1, 3 do
  robot_arm: grab()
  robot_arm: move_right()
  robot_arm: move_right()
  robot_arm: drop()
  robot_arm: move_left()
  robot_arm: move_left()
 
 print(i)
end

robot_arm: move_right()
robot_arm: move_right()

for i =1, 3 do
  robot_arm: grab()
  robot_arm: move_left()
  robot_arm: drop()
  robot_arm: move_right()
 
 print(i)
end