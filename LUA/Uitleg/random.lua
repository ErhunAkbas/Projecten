require 'robot_arm'

robot_arm: random_level(1)
robot_arm.speed = 0.99

move = "wwaar"
x = 1

while move == "wwaar" do
  robot_arm:grab()
  color = robot_arm: scan()
  if color == nil then
    move = false
  else
    for i = 1,x do
      robot_arm:move_right()
    end
    robot_arm:drop()
    for i = 1, x do
    robot_arm:move_left()
    end
    x = x + 1
    print(x)
  end
end


for j = 1, 8 do 
  robot_arm:move_right()
  end

for i = 1, 8 do
  
  robot_arm:grab()
  color = robot_arm:scan()
 
 if color == "white" then
   robot_arm:move_right()
   robot_arm:drop()
    robot_arm:move_left()
    robot_arm:move_left()
  else 
    robot_arm:drop()
    robot_arm:move_left()
  end
end