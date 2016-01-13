require'robot_arm'
robot_arm:load_level("exercise 3")
robot_arm.speed = 0.8


move = true

z = 1
y = 1

while move == true do
  robot_arm:grab()
  color = robot_arm:scan()
  print(color)
  if color == nil then
    move = false
  else
    for r = 1, z   do
      robot_arm:move_right()
    end
    robot_arm:drop()
    for r = 1, z do
      robot_arm:move_left()
    end
  end
  z = z + 2
end