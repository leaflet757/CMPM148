"Nekat" by Aaron Marquis and Leif Myer

[Build Arguments]
Release along with cover art, the source text, an interpreter, and a website. 

[Includes]
Include Rideable Vehicles by Graham Nelson. 

[***Variables and Stuff***]
camera_timer is a number that varies. camera_timer is 0.
with_daughter is a number that varies. with_daughter is 0.
must_hide is a number that varies. must_hide is 0.

[Story Description]
The story description is "The player’s takes the role of Brian who is an ex-CIA agent. The player must utilize Brian’s abilities to defend himself from the mafia and save his daughter Kam."

[Stroy Intro]
When play begins:
	say "Brian Bills, former CIA agent, has enjoyed his time off for the last 10 years. For the most part, He has lived a normal life aside from the occasional sale at JC Penny’s. One day, he decides to take his beautiful daughter, Kam, on a trip to Europe during her Spring Break. After one of his morning pilates classes, he comes back to his hotel room ran-sacked and in complete disarray, and Kam is no where to be seen. Suddenly, Brian’s phone begins to ring. Brian picks up the phone and hears a distorted voice on the other side. The caller informs Brian that his daughter has been kidnapped to reconcile his past actions while in the CIA. Furious, Brian sets out to search for his daughter’s kidnappers. During his investigation, Brian discovers that the kidnappers are apart of the same mafia gang he helped eradicate many years ago. But this knowledge came with a price. It turned out that his informant is actually a mafia member as well, causing Brian to get captured as well.[line break]".
[================================================================================]	
	
[Hidable Objects]
A Hidable Object is a kind of enterable container.
A hidable object is usually fixed in place.

[-----Holding Cell Room-----]
The Holding Cell is a room. The description of Holding Cell is "The room is icy cold and barely lit.  Utilizing the little light you have, you deduce that the room has very few notable features. The room could really use some posters.".

[-----Long Hallway Room-----]
Long Hallway is a room. The Long Hallway is east of The Holding Cell. The description of Long Hallway is "This room has far fewer spacial constraints compared to the room you were held in. You see that the hallway is very long and connected to several other rooms. ".
A Porcelain Canoe is a hidable object in the Long Hallway. The description of Porcelain Canoe is "Your mind strains to find the purpose of this item. It's certainly big enough to uncomfortably house a person but the material the canoe is made out of is definately questionable.".

[-----Wide Hallway Room-----]
Wide Hallway is a room. The Wide Hallway is east of the Long Hallway. The description of Wide Hallway is "Another hallway with the properties of the most boring interior decorator you have ever seen. You notice several enterances and exits leading out of the room.".
A Giant Inflatable Menorah is a hidable object in the Wide Hallway. The description of Giant Menorah is "A giant inflatable religious artifact that is tucked away in the corner. You begin to wonder that the goons here are just misunderstood. Perhaps they do not want to steal young daughters and would prefer to steal Christmas instead.".

[-----Unlit Area (Dark Room) Room-----]
Unlit Area is a room. The Unlit Area is east of the Wide Hallway. The description of Unlit Area is "This place seems to be out of reach of any light source. Just what this place needed, more dark rooms. ".
A Dog House is a hidable object in the Unlit Area. The description of Dog House is "The dog house kinda looks like the one you have back at home. I wonder where the dog is...".

[-----Locker Room-----]
Locker Rooms is a room. The Locker Rooms are east of the Unlit Area. The description of Locker Rooms is "This place reminds you of the locker rooms at your old high school, and just like the lockers at your old high school, you would prefer not to know what's in them.".
The Shower is a hidable object in the Locker Rooms. The description of Shower is "No locker room would be complete without one. The shower is surrounded by a silky smooth blue tarp. ".

[-----Archive Room-----]
Archive Room is a room. The Archive Room is south of the Locker Rooms. The description of Archive is "This room is filled with filling cabinets upon filing cabinets. You would think that a complex crime organization would want to minimize their paper trail.".
A Coat Closet is a hidable object in the Archive Room. The description of Coat Closet is "A big tall closet with a couple hangers in it. It is just big enough for you, and three of your most prized coats.".

[-----Office Room-----]
Office is a room. The description of Office is "An office-y room that overlooks the entire warehouse floor. [if escape is not happening]You hear some soft sobbing.".
The Office Door 1 is east of the Office and west of the Archive Room. The Office Door 1 is a door. The Office Door 1 is lockable and locked. The description of Office Door 1 is "A standard wooden door. There is a label on the door that reads 'BOSSMAN'".
The Office Door 2 is west of the Office and east of the Warehouse Floor. The Office Door 2 is a door. The Office Door 2 is lockable and locked. The description of Office Door 2 is "A standard wooden door. There is a label on the door that reads 'BOSSMAN'".
The small Silver Key unlocks the Office Door 1. The description of the small Silver Key is "You doubt the key is real silver, but it would be kinda fun to hang onto it just in case it's worth something.".
The small Silver Key unlocks the Office Door 2.
A Desk is in the Office Room. A Desk is a hidable object. The description of Desk is "A matt black desk with red highlighting. You conclude that this desk is the edgiest thing you have seen all day.".
A Small Poster is in the Office Room. The description of Small Poster is "A poster with a picture of a cat hanging from a tree that says, 'Hang in there.'".

[-----Daughter's Holding Cell-----]
Daughter's Holding Cell is a room. The Daughter's Holding Cell is north of the Office. The description of Daughter's Holding Cell is "This room does not look much different than the room you were kept in. Would it kill these people to put lamps in their cells.".

[Daughter Person]
Kam is a person in Daughter's Holding Cell. The description of Kam is "You could spend the entire day looking at your daughter and describing every minute feature of her being. However, due to the gravity of this situation you chose to not do that now."
After going in the Daughter's Holding Cell:
	now with_daughter is 1;
	continue the action.

[Check if the Player can Enter]
Before going to Daughter's Holding Cell:
	if Camera Off is happening:
		say "With the cameras turned off you are able to safely enter the room.";
	else:
		say "Right before you begin your stride to the other room, you notice there is a camera pointed directly at the enterance. There is a subtle red light flashing which may indicate that the camera is on. You wouldn't want the security here to notice your escape.";
		stop the action.
		
[Escape Scene]
Escape is a scene. Escape begins when the player is in Daughter's Holding Cell.
When Escape begins:
	say "With Kam by your side, it's time to make your great escape. You need to travel fast before people notice she is missing.".
[When Escape ends:
	say "TODO: should this be where we say you have been successfull?".]
[Every turn during the Escape:
	say "Escaping...".]
Escape ends when the player is in Exit.

[-----Stock Holding Room-----]
Stock Holding Area is a room. The Stock Holding Area is south of the Long Hallway. The description of Stock Holding Area is "A room filled with stocks. This must be how the Mafia makes money.".
Pile of Stocks are a hidable object in the Stock Holding Area. The description of Pile of Stocks is "A large pile of papers you can dive right into.".

[Stick of Dynamite]
A Stick of Dynamite is switched off device in the Stock Holding Area. The description of Stick of Dynamite is "A stick of dynamite you found in the stock room. I guess if the stock market were to crash, you wouldn't mind having a stick of dynamite with you. You should probably avoid using this on anything until you find Kam.".
Before switching on Dynamite:
	if Escape is happening and player is in Shipping Area and player has Matches:
		say "You use the last match on the stick of dynamite. That fuse is burning a lot faster than you thought it would. You throw the dynamite right in front of the Iron Door.";
		now Dynamite is in Shipping Area;
		remove Matches from play;
		continue the action;
	else:
		say "It's probably best not to do that now.";
		stop the action.

[-----Assembly Room-----]
Assembly is a room. The Assembly is south of the Stock Holding Area. The description of Assembly is "This looks like the manufacturing room of the warehouse. You feel slightly less safe without a hard hat in here.".
Ambiguous Heavy Machinery is a hidable object in the Assembly. The description of Ambiguous Heavy Machinery is "You have no idea what these do or what they are for. All you know is that you are here to find Kam and chew gum, and you're all out of gum.".

[-----Warehouse Floor Room-----]
Warehouse Floor is a room. The Warehouse Floor is east of the Stock Holding Area and south of the Wide Hallway. The description of Warehouse Floor is "A giant room. It is mostly comprised of open spaces except for the outer perimeter which is littered with trash, empty containers and the occasional can of beans.".
[Silver Key]
The small Silver Key is in the Warehouse Floor.
Giant Wire Spools are a hidable object in the Warehouse Floor. The description of Giant Wire Spools is "Giant wooden wire spools. The wood looks slightly rotten and smells funny. They are far enough in the corner to hide behind.".

[-----Packaging (Shipping) Room-----]
Packaging Area is a room. The Packaging Area is south of Assembly. The description of Packaging Area is "A room filled with a bunch of boxes and packing peanuts. Like seriously, you have never seen so many packing peanuts in one place.".
A Wooden Crate is a hidable object in the Packaging Area. The description of Wooden Crate is "An empty, giant wooden crate that can be used as a hiding spot. Unfortunately for you, this box is not filled with any packing peanuts".

[-----Security (Camera) Room-----]
Security is a room. Security is north of the Restroom and east of Assembly and west of the Sleeping Quarters and south of the Warehouse Floor. The description of Security is "A room filled with a lot of fancy tech. You see TVs on the wall that display many different camera feeds of the entire warehouse. You see some people walking around in various rooms. One of the cameras is pointed at a door in a office.".
A Giant Super Computer is in the Security Room. Giant Super Computer is a hidable object. The description of Giant Super Computer is "This thing looks like it can run 8 games at once. It is unfortunate it is not being used for that purpose.".

[Camera Scene]
Camera Off is a recurring scene. Camera Off begins when camera_timer is 6.
When Camera Off begins:
	say "After pressing a few buttons and turning a few nobs, you are able to disable the camera. Hopefully, no one will notice.".
When Camera Off ends:
	say "You notice that the cameras seem to be on again. Those darn Mafia IT people!";
	now Camera Controls are switched on.
Every turn during the Camera Off:
	decrease camera_timer by 1.
Camera Off ends when camera_timer is 0.

[Needing to Hide Scene]
hs_count is a number that varies. hs_count is 0.
hide_time is a number that varies. hide_time is 0.
Needing to Hide is a recurring scene. Needing to Hide begins when must_hide is 1.
When Needing to Hide begins:
	now hs_count is 0;
	now hide_time is a random number between 2 and 3;
	say "A thug enters the room. You need to find somewhere to hide fast!".
When Needing to Hide ends:
	say "Phew! The thug has left the room. It should be safe to leave your hiding spot.".
Every turn during Needing to Hide:
	if hs_count is 1:
		if the player is hidden:
			say "Lying in wait, like the robotic cheeta, you wait for the thug to leave...";
		if the player is not hidden:
			end the story saying "Oh no! You have been spotted! Just when you turn to run away, a group of thugs seem to come from all directions. Brian is now captured again with even less hope of escaping.";
	if hide_time is 0:
		[say "the man leaves";]
		now must_hide is 0;
	increase hs_count by 1;
	decrease hide_time by 1.
Needing to Hide Ends when must_hide is 0.

[Camera Switching]
The Camera Controls is a switched on device in Security. It is fixed in place.
Carry out switching off the Camera Controls:
	now camera_timer is 6;
	[say "The camera timer is now [camera_timer]".]
Carry out switching on the Camera Controls:
	now camera_timer is 0.
	[say "The camera timer is now [camera_timer]".]

[-----Restroom-----]
Restroom is a room. The Restroom is east of the Packaging Area. The description of Restroom is "This room looks like it has had some pretty decent janitorial service. If only there was a person to dry your hands for you.".
Stalls are a hidable object in the Restroom. The description of Stalls is "There are three stalls in the room. If you were to stand on top of the toilet and lock the door, no one would know you were in here.".

[Matches]
Matches are in the Restroom. The description of Matches is "A small pack of matches with an elephant on the front. Why would an elephant need matches?".

[-----Shipping (Vehicle) Room-----]
Shipping Area is a room. The Shipping Area is east of the Restroom. The description of Shipping Area is "This place looks like a garage. There is plenty of room for cars and trucks in here.".
A Stack of Tires are a hidable object in the Shipping Area. The description of Stack of Tires is "These tires look like they belong to a monster truck of some kind.".
[TODO: the jeep should not be able to move until the end]

[Car Thing]
The Jeep is a vehicle in the Shipping Area. The description of Jeep is "A good ol' army green jeep from the 40s. It looks like it has seen some history.".
Before taking the jeep:
	say "You know what they say, 'Try to take a jeep, end up in the keep.'.";
	stop the action.
Before entering the Jeep:
	if Escape is not happening:
		say "You should probably not drive away before getting you daughter.";
		stop the action;
	else:
		continue the action.

[-----Sleeping Quarters-----]
Sleeping Quarters is a room. The Sleeping Quarters is north of the Shipping Area and south of the Archive Room. The description of Sleeping Quarters is "A long room filled with a whole bunch of beds.".
Beds are in the Sleeping Quarters. Beds are a Hidable Object. The description of Beds is "Some of your standard spring beds. There are at least twenty of them in here. You could probably hide in the covers if you get scared."

[-----Exit Room-----]
Exit is a room.

[Switch to PT2 of Game]
Switching is a scene. Switching begins when the player is in Exit.
When switching begins:
	[say "switching begins";]
	now the player is in the TV Room.
When switching ends:
	say "With the door in ruins and Kam with Brian, you cannot think of any substaintial reason for them to stay there. With blazing speed, they sprint out of the complex with the Mafia right on their tails. Luckily for them, the complex they were being held captive in was only a few meters away from an airport. Using Brian's official CIA credentials, they are able to find a plane ride home, It seems like everything is over...
	
	Unfortunately, not everything is over. Two months later, Brian spots three mysterious cars follow him back home after picking up his daughter from school. Once he gets back home with his daughter, they quickly go inside the house and lock the doors. Brian must make his last stand against the mafia in his own home. He loads up his gun and prepares for the final battle...".
Switching ends when the player is in the Living Room.

[Iron Door]
The Iron Door is a lockable door that is locked. The Iron Door is east of the Shipping Area and west of the Exit. The description of Iron Door is "A solid iron door that doesn't even have a handle. It might has well been a wall.".

[Check if player can leave with car and Kam]
[TODO: must leave the jeep after going through the door, then remove from play]
[Before going through the Iron Door:
	if player is in the jeep:
		[remove the jeep from play;]
		continue the action;
	else:
		say "you should get in the jeep".]

[Check if Kam should follow you]
After going when with_daughter is 1:
	now Kam is in location of the player;
	continue the action.
	
[Every turn when a random chance of 1 in 10 succeeds:]
Before going east:
	if a random chance of 1 in 8 succeeds and player is not in Jeep:
		now must_hide is 1;
	continue the action.
Before going north:
	if a random chance of 1 in 8 succeeds and player is not in Jeep and the player is not in the Office:
		now must_hide is 1;
	continue the action.
Before going south:
	if a random chance of 1 in 8 succeeds and player is not in Jeep:
		now must_hide is 1;
	continue the action.
Before going west:
	if a random chance of 1 in 8 succeeds and player is not in Jeep and the player is not in the long hallway:
		now must_hide is 1;
	continue the action.

[Hide action]
Hiding is an action applying to one thing.
Understand "hide in [something]" as hiding.
Understand "hide behind [something]" as hiding.
Understand "hide under [something]" as hiding.
Understand "hide above [something]" as hiding.
Understand "hide on top of [something]" as hiding.
Check hiding:
	if the noun is not a hidable object:
		say "You cannot hide in the [the noun]".
Carry out hiding:
	if the object is a hidable object:
		[say "debig: you are going in the thign";]
		if Escape is happening:
			say "You quickly shove Kam in the [the noun] to keep her from being seen.";
		now the player is hidden;
		try entering the noun.
		
[Check if the Player is Hidden]
Every Turn:
	if the player is in a hidable object:
		[say "debig: the player is hidden";]
		now the player is hidden;
	else if the player is not in a hidable object:
		[say "debig: the player is not hidden";]
		now the player is not hidden.

[Use matches action]
Igniting is an action applying to two things.
Understand "light [something]" as Igniting.
Understand "light [something] with [something]" as Igniting.
Check Igniting:
	if the matches are not carried:
		say "You don't have anything to light [the noun] with.";
	else if the stick of dynamite is not carried:
		say "That is probably not something you should use matches on";
	else if escape is not happening:
		say "It would best not to make a lot of noise right now. You still need to find Kam.";
	else if the player is not in the Shipping Area:
		say "You should probably use that near the exit.".
Carry out Igniting:
	if player is in the Shipping Area and the stick of dynamite is carried and the matches are carried:
		say "placing dynamite by locked door, it then instantly explodes";
		now Dynamite is in Shipping Area;
		now the Iron Door is unlocked;
		remove Matches from play.


[NOTES]
A door can be magical or boring. A door is usually boring.
[Properties]
A person can be hidden or not hidden. A person is usually not hidden.
The player is a person. The player is not hidden.

[==================================================================]

Front Yard is a room. 

A Front Window is in the Front Yard. "The Front Window looks into the Bar Room."

Front Window is fixed in place.

the front door is north of Front Yard and south of Front Hallway.

the front door is a open door. "The front door was picked open. Someone is inside the house."

Front Hallway is a room. 

Bar Room is a room.

A Bar Room Window is in the Bar Room. "The Bar Room Window looks into the Front Yard."

Bar Room Window is fixed in place.

Stairs is a room.

Front Hallway is east of Bar Room and west of Stairs.

Dining Room is a room. Dining Room is north of Bar Room and west of Main Hallway.

Main Hallway is a room. Main Hallway is north of Front Hallway.

Home Office is a room. 

A home desk is a closed container in Home Office. "[if gun is inside desk]There's a gun with ammo in your desk."

the home desk is openable.

home desk is fixed in place.

A gun is inside the home desk.

home office door is a closed door. "The office door leads to the Main Hallway."

home office door is east of Main Hallway and west of Home Office.

Kitchen is a room. Kitchen is north of Dining Room.

A Kitchen Window is in the Kitchen. "The Kitchen Window looks into the Back Yard."

Kitchen Window is fixed in place.

Living Room is room. Living Room is north of Main Hallway.

TV Room is a room. TV Room is east of Living Room.

A  TV Room Window is in the TV Room. "The TV Room Window looks into the Back Yard."

TV Room Window is fixed in place.

Back Yard is a room. "The Back Yard has two windows, but can't see through them because of the blinds in the way."

back door is a closed door. back door is south of Back Yard and north of Living Room.

Upstairs Hallway is a room. Upstairs Hallway is east of Stairs.

Bathroom is a room.

bathroom door is a closed door. bathroom door is south of Bathroom and north of Upstairs Hallway.

Master Bedroom is a room.

master bedroom door is a closed door.  master bedroom door is east of Upstairs Hallway and west of Master Bedroom.

A Master Bedroom Window is in the Master Bedroom. "The Master Bedroom Window looks into the Back Yard."

Master Bedroom Window is fixed in place.

Kam's Room is a room.

Kam's door is a closed door. Kam's door is south of Upstairs Hallway and north of Kam's Room.

[[enemies]]

A enemy is a kind of person.

Thug1 is an enemy. A Thug1's corpse is a part of Thug1. "You see the thug's dead body still here."

Thug2 is an enemy. A Thug2's corpse is a part of Thug2. "You see the thug's dead body still here."

[[Scene]]

Definition: a enemy is dead if they are nowhere.

Breakin is a scene.

Breakin begins when the player is in the Living Room for the first turn.

When Breakin begins:
	now Thug1 is in the Front Yard;
	now Thug2 is in the Bar room;
	Say "You start heading towards the kitchen when you hear some noise coming from the front door."
	
Every turn during Breakin:
	if time since Breakin began is 1 minute:
		say "You see a thug enter the front door and is now in the Front Hallway. You look in the Backyard and see another thug trying to hop over the back fence. While the first thug is looking west towards the Bar room, you quickly dash to your office.";
		now player is in Home Office;
		now Thug1 is in the Front Hallway;
		now Thug2 is in the Back Yard;
	otherwise if time since Breakin began is 5 minute:
		say "You hear some movement in the house. They must be looking for Kam upstairs. You have to kill the thugs before they reach her room.";
		if Thug1 is not dead, now Thug1 is in the Bar room;
		if Thug2 is not dead, now Thug2 is in the Living room;
	otherwise if time since Breakin began is 8 minute:
		say "You hear movement in the house.[if Thug1 is not dead] Someone is around the Kitchen.[end if]";
		if Thug1 is not dead, now Thug1 is in the Dining room;
		if Thug2 is not dead, now Thug2 is in the TV room;
	otherwise if time since Breakin began is 12 minute:
		say "You hear movement in the house.[if Thug2 is not dead] Someone is around the TV room.[end if]";
		if Thug1 is not dead, now Thug1 is in the Dining room;
		if Thug2 is not dead, now Thug2 is in the TV room;
	otherwise if time since Breakin began is 16 minute:
		say "You hear movement in the house.[if Thug2 is not dead] Someone is around the Living room.[end if]";
		if Thug1 is not dead, now Thug1 is in the Kitchen;
		if Thug2 is not dead, now Thug2 is in the Living room;
	otherwise if time since Breakin began is 19 minute:
		say "You hear movement in the house.[if Thug1 is not dead] Someone is around the Living room again.[end if]";
		if Thug1 is not dead, now Thug1 is in the Living room;
		if Thug2 is not dead, now Thug2 is in the Main Hallway;
	otherwise if time since Breakin began is 20 minute:
		say "You hear movement in the house.";
		if Thug1 is not dead, now Thug1 is in the Living room;
		if Thug2 is not dead, now Thug2 is in the Front Hallway;
	otherwise if time since Breakin began is 22 minute:
		say "You hear movement in the house.[if Thug2 is not dead] Someone just checked the office, and is now at the Front door.[end if]";
		if Thug1 is not dead, now Thug1 is in the Living room;
		if Thug2 is not dead, now Thug2 is in the Front Hallway;
	otherwise if time since Breakin began is 24 minute:
		say "You hear movement in the house.[if Thug2 is not dead] Someone is going up the stairs. You better hurry![end if]";
		if Thug1 is not dead, now Thug1 is in the Front Hallway;
		if Thug2 is not dead, now Thug2 is in the Stairs;
	otherwise if time since Breakin began is 26 minute:
		say "You hear movement in the house.[if Thug2 is not dead] Someone is right outside of Kam's bedroom.[end if]";
		if Thug1 is not dead, now Thug1 is in the Stairs;
		if Thug2 is not dead, now Thug2 is in the Upstairs Hallway;
	otherwise if time since Breakin began is 28 minute:
		end the story saying "You here Kam scream from upstairs as her door gets busted down. You dash upstairs to see her window open, and your daughter kidnapped once again.";

Breakin ends when Thug1 is dead and Thug2 is dead.

When Breakin ends, end the story saying "You successfully killed the thugs and saved your daughter.";

instead of attacking Thug1:
	say "you tackle Thug1 and break his neck";
	now everything which is a part of Thug1 is in the location;
	now Thug1 is nowhere;
	
instead of attacking Thug2:
	say "you tackle Thug2 and break his neck";
	now everything which is a part of Thug2 is in the location;
	now Thug2 is nowhere;
	
Shooting it with is an action applying to two things. 

Check shooting something with something: 
	if the player is not carrying the gun, say "You are unarmed!" instead; 
	if the second noun is not the gun, say "[The second noun] does not fire." instead; 
	if the noun is the gun, say "You can't do that" instead; 
	if the noun is the player, say "You can't do that!" instead. 
	
Understand "shoot [gun] at [something ungunlike]" as shooting it with (with nouns reversed). 

Definition: a thing is ungunlike if it is not the gun. 

Understand "shoot [something ungunlike] with [gun]" as shooting it with. Understand "shoot [something] with [something]" as shooting it with. 

Understand "shoot [something] at [something]" as shooting it with (with nouns reversed). Understand "fire [gun] at [something ungunlike]" as shooting it with (with nouns reversed). Understand "fire at [something ungunlike] with [gun]" as shooting it with. Understand "fire at [something] with [something]" as shooting it with. 

Carry out shooting something with something: 
	say "BANG! [The noun] falls to the ground. "; 
	now every thing which is part of the noun is in the location; 
	now the noun is nowhere. 

