require 'robot_arm'
robot_arm:load_level('exercise 11')
robot_arm.speed = 0.75

-- beweeg 9 naar rechts

for i = 1, 9 do
  
  
 -- pak blok
 -- scan blokje
 
 -- als het wit is dan 1 naar rechts
 -- drop blokje
 -- ga 2 naar links
 
 -- als het niet wit is droppen
 -- ga 1 naar links
  
end



for j = 1, 8 do 
  robot_arm:move_right()
  end

for i = 1, 8 do
  
  robot_arm:grab()
  color = robot_arm:scan()
 
 if color == "red" then
   robot_arm:move_right()
   robot_arm:drop()
    robot_arm:move_left()
    robot_arm:move_left()
  else 
    robot_arm:drop()
    robot_arm:move_left()
  end
end