require 'robot_arm'
robot_arm:load_level('exercise 8')
robot_arm.speed = 0.93
x = 8
z = 8
y = 7
robot_arm:move_right()
for i = 1, y do
  robot_arm:grab()
  for i = 1, x do
    robot_arm:move_right()
  end
    robot_arm:drop()
  for i = 1, z do
      robot_arm:move_left()
  end
