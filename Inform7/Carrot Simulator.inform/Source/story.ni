"Carrot Simulator" by Leif Myer

[Build Arguments]
Release along with cover art, the source text, an interpreter, and a website.


[Player Description]
The description of the player is "You are a carrot."


[Intro Paragraph]
Simulation Start is a room. "Welcome to Carrot Simulator 2015, the only simulation where you can live out your dreams of being a carrot. There are plently of adventures to be had in the realm of carrot simulation. Up ahead you notice two doors. The door closer to the east side of the room has a sign that says 'Turnip Door'. The door closer to the west side of the room has a picture of a carrot on it.[line break]This is where you must put all your training to the test, which door do you choose?"

[Fake Turnip Room]
The blank is a room. The Turnip Door is west of the blank and east of the Simulation Start. The Turnip door is a door. The turnip door is closed and locked. The description of the Turnip Door is "Sounds like they are having a party in there..."
Instead of opening the turnip door, say "This is Carrot Simulator. Going through the Turnip Door would just be silly."

[Check if player tries to go back in Simulation Start]
Before going east:
	If player is in Simulation Start:
		say "This is Carrot Simulator. Going through the Turnip Door would just be silly.";
		stop the action;
	If player is in Underground:
		say "You struggle to reach for the door because there is so much dirt in the way. Also you are a carrot and don't have hands. Oh well, it would be silly to go back anyway.";
		stop the action.


[Underground Room]
Undergound is a room. The description of Underground is "After rolling through the door you find yourself underground. It is very hard to see and the dirt is making is hard to move." 
The Carrot Door is east of Underground and west of the Simulation Start. The Carrot door is a door. The carrot door is closed and openable. The description of the carrot door is "A simple wood door with a picture of a carrot on it. As a fellow carrot enthusiast, you feel like you should open this door."

[Things that are in the Underground Room]
Water is in the Underground. The description of water is "A liquidy substance that provides life to all the organisms on this planet. The water could probably benefit something."
Roots is in the Underground. Roots is a container that is open. The description of roots is "That is the strangest container you have ever seen! The roots look dry and crusty. As a carrot, you can relate to dry and crusty roots."
Fiber is in the Roots. The description of fiber is "Very important to carrots. The current strength of this fiber is [fiber strength] fiber units."
Fiber Strength is number that varies. Fiber Strength is 0.


[Surface Room]
The Surface is a room. The Surface is above Underground. The description of the Surface is "You can feel the warmth of the sun. This is a lot better than being cramped underground."

[Items on the Surface]
Cotton Candy is in the Surface. The description of Cotton Candy is "Fluffy pink cotton candy. It reminds you of the war."
Carrot Friends is a person in the Surface. The description of Carrot Friends is "Oh hey look! A bunch of you friends are here, you should try going over and speak to them."
Carrot-cature is in the Surface. The description of Carrot-cature is "The Carrot-cature is a goofy picture of a carrot. The carrot in the picture is wearing a pair of sun glasses. That carrot seems familiar."
Carrot Container is in the Surface. The Carrot Container is a container that is closed and openable. The description of the Carrot Container is "You never thought you would be as religious as you are now. The Carrot Container is the fabled last resting place of all carrots. It is the last thing carrots see before they are taken to the world beyond."

[Some Variable Stuff]
cotton_touch is a number that varies. cotton_touch is 0.

[Taking Check]
Before taking Cotton Candy:
	If cotton_touch is 0:
		say "I would be wary about approaching the cotton candy. Your ancestors have told stories about carrots never returning after interacting with cotton candy. I would be careful about doing that again.";
		now cotton_touch is 1;
	Else If cotton_touch is 1:
		end the story saying "GAME OVER:[line break]Ignoring your ancestors, you decide to explore the deliciousness of cotton candy. How can something so sweet be bad anyway. You summon your carrot strength to roll towards the cotton candy. You end up rolling right into its pink, sugary clouds. You can smell the sweetness of the cotton candy. Distracted, you fail to notice the approaching footsteps of a child. Just as the shadow of the child passes over you, you realize the true reason of the Cotton Candy's evil. The candy itself is not the actual reason to fear it, carrots fear cotton candy because of what it attracts: evil children! It is too late, you hear the child shriek, 'COTTON CANDY and CARROTS?!' The child swiftly bends down to grab you. Using you as some kind of make shift cone, the child whirls the cotton candy around your carrot top. As you feel yourself being carried around, the child slowly and methodically begins eating the cotton candy. Soon, there is none left. The child is left with no other choise but to dispose of his makeshift cone. Piece by piece, crunch by crunch, you feel yourself getting ripped apart. Within seconds there is none of you left.";
	stop the action.
Before taking Carrot Friends:
	say "You're a monster, why would you want to kidnap your friends?[line break]Maybe asking them about their day would be better.";
	stop the action.
Before taking Carrot-cature:
	say "Somone worked hard on that. Taking it would be really mean, even for a carrot.";
	stop the action.

[Speak Action]
Speaking is an action applying to one thing.
Understand "speak" as speaking.
Understand "speak to [someone]" as speaking.

[Rolling action] [TODO: rolling is the new look command]
Rolling is an action applying to nothing.
Understand "roll" as rolling.
Carry out rolling:
	say "inhale my dong child"

[Carrot Friend Interaction]
dancecount is a number that varies. dancecount is 0.
Instead of speaking Carrot Friends:
	if dancecount is 0:
		now dancecount is 1;
		say "You hear little carrot cheers and dances. It feels good to have friends cheer you on.";
	else:
		say "All your Carrot Friends are tired and don't want to dance again. It is probably best to let them rest."

[Check if the player tries to interact other ways]
Instead of asking Carrot Friends about something:
	say "The Carrot Friends know nothing about the words which you speak. They are just carrots, give them some slack."
Instead of telling Carrot Friends about something:
	say "You finish your story to the Carrot Friends. They respond with nothing more than blank stares and a small cough."
	
[Looking check]
Instead of looking:
	say "You cannot see anything because carrots don't have eyes. Try rolling to get a feel for the area."

[Help Action]
Helping is an action applying to nothing.
Understand "help" as helping.
Carry out helping:
	say "You try to cry out for help but as a carrot you have no mouth and do not make a sound. No one will be coming to help."
		
[Container Check]
After inserting:
	if water is in roots and fiber is in roots:
		now Fiber Strength is 9000;
		say "Placing both the water and fiber in the roots has started a chain reaction. Through the magic of agriculture, the water has increased the power of fiber to [fiber strength]. Fiber this strong is very valuable to a carrot.[line break]You feel sunlight on you velvety skin. Perhaps you can find the strength within you to travel up.";
		remove water from play;
	if fiber is in carrot container and fiber strength is 9000:
		end the story saying "YOU WIN:[line break]With the fiber secured in the Carrot Container, you turn with you head held high. You made you carrot nation proud today. The little carrot children will tell stories of your bravery. Perhaps they will even make a cool movie from your adventure staring Dwayne 'The Carrot' Johnson. It's a nice thought but there are other matters to attend to. You perish these thoughts of muscular carrots and mount your horse to ride off into the sunset. Well done."