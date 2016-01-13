function kleur()
  --scan kleur en geef terug
  return robot_arm:scan()
end


  require 'robot_arm'
  robot_arm:load_level('exercise 11')
  robot_arm.speed = 0.85
  
  print"Welke kleur moet worden verzameld? Rood, groen blauw of wit"
  answer = io.read()


if answer == "red"  or answer == "blue" or answer == "gren" or  aswer == "white" then


    robot_arm:move_right()
  for x = 1, 8 do
    robot_arm:grab()
    
    
    color = kleur()--Roep functie aan die kleur teruggeeft!

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
end
