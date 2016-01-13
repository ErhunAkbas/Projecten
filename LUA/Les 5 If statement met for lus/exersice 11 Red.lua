require 'robot_arm'
robot_arm:load_level('exercise 14')
robot_arm.speed = 0.85

  robot_arm:move_right()
for x = 1, 8 do
  robot_arm:grab()
  color = robot_arm:scan()

  if color == "red" then
   for j = 1, 9 - x do
     robot_arm:move_right()
   end
    robot_arm:drop()
     
    for k = 1, 8 - x do
    robot_arm:move_left()
    end
 else
    robot_arm:drop()
    robot_arm:move_right()
   end
end


-- Doe 9x
  -- Beweeg naar rechts
  -- Pak blok
  -- Scan kleur
  
  -- Als kleur rood is
      -- Doe 8x
        -- Beweeg rechts
      -- Drop het blok
      -- Beweeg 1 naar links 
  -- Als kleur niet rood is
    -- Drop het blok
    

