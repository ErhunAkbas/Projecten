require 'robot_arm'
robot_arm:load_level('exercise 8')
robot_arm.speed = 0.99
robot_arm:move_right()
robot_arm:grab()
for x = 1, 7 do
  for i = 1, 9 do
    robot_arm:move_right()
  end
  robot_arm:drop()
  for z = 1, 8 do
    robot_arm:move_left()
  end
  robot_arm:grab()
end