require 'robot_arm'
robot_arm:load_level('exercise 6')
robot_arm.speed = 0.99

x = 7
z = 8
for i = 1, x do
    robot_arm:move_right()
  end
  for i = 1, z do
    robot_arm:grab()
    robot_arm:move_right()
    robot_arm:drop()
    robot_arm:move_left()
    robot_arm:move_left()
  end