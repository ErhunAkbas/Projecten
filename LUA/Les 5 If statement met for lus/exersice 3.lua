require 'robot_arm'

robot_arm:load_level('exercise 3')

robot_arm:grab()
kleur = robot_arm: scan()
print(kleur)