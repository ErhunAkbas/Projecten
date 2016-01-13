require 'robot_arm'
robot_arm:load_level('exercise 9')
robot_arm.speed = 0.70

for j = 1, 4 do
    for z = 1, j do
      robot_arm:grab()
      for i = 1, 5 do
        robot_arm:move_right()
      end
        robot_arm:drop()
        for i = 1, 5 do
          robot_arm:move_left()
        end
    end
    robot_arm:move_right()
  end

