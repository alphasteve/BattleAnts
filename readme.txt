
* ants communicate using pheromones
* some ants spray acid or glue, ants bite and sting their enemies.

I envision a game where the player starts with an ant, and they go out looking for fungus to collect and bring back to the queen.  The queen needs a certain amount to lay eggs.  The eggs can hatch into whatever type of ant the player wants.  Worker ants collect the fungus, and have little defense and attack.  Soldier ants fight.  Scout ants look for fungus and report using pheromones what they find or if they find an enemy.  Glue ants shoot glue at a target and stick it.  Spray ants spray poison.
The player only is in charge of ant production/aggression ratios by using a slider.  The player only sees a part of the screen that has been uncovered by ants.  It's kind of a dumbed down starcraft.  You can play against the computer and maybe later I can add a multiplayer mode.

The program goes through each ant object and runs an action command.  The action command then has the ant check for enemies or food.  If it is a worker and it sees food, then it collects the food.  If it is a soldier and it sees an enemy, it attacks.  Otherwise it may move along it's trail or move randomly until it finds something.

So the main loop of the program is just a user interface and a map of all the ants.  The loop calls all the ants and they do stuff independently.

User can start and stop the action and adjust sliders and knobs.  Replayability is mostly multi-player.

Named ants... ?  WHen ants get a certain level, you can name them?